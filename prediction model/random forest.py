import mysql.connector
import pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import r2_score
from sqlalchemy import create_engine
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
import joblib
import datetime

# Connect to MySQL Database
db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="rposystem",
    port = 3307
)

# Create an SQLAlchemy engine using the MySQL connection
engine = create_engine('mysql+mysqlconnector://root:root@localhost:3307/rposystem')

# Query Training Data
query = "SELECT Category, SubCategory, ItemName, PopularityRating, DayOfWeek FROM menu_data"
df = pd.read_sql(query, con=engine)

# Preprocess Data
df_encoded = pd.get_dummies(df, columns=['Category', 'SubCategory', 'ItemName', 'DayOfWeek'], drop_first=True)

# Split Data into Features (X) and Target Labels (y)
X = df_encoded.drop(['PopularityRating'], axis=1)
y = df_encoded['PopularityRating']

# Create and Train the Model
model = RandomForestRegressor()
model.fit(X, y)

# Save the trained model
joblib.dump(model, 'trained_model_linear.joblib')

# Calculate Model Accuracy (R-squared)
y_pred = model.predict(X)
accuracy = r2_score(y, y_pred)
print("Model Accuracy (R-squared):", accuracy)

# Get the current date
current_date = datetime.date.today()

# Calculate the date for tomorrow
tomorrow_date = current_date + datetime.timedelta(days=1)

# Get the day of the week for tomorrow as an integer (0 = Monday, 1 = Tuesday, etc.)
day_of_week_int = tomorrow_date.weekday()

# Convert the integer to the name of the day
day_of_week = tomorrow_date.strftime('%A')

# Query Menu Items for the Desired Day
query = f"SELECT Category, SubCategory, ItemName FROM menu_data WHERE DayOfWeek = '{day_of_week}'"
menu_df = pd.read_sql(query, con=engine)

# Preprocess Menu Data
menu_encoded = pd.get_dummies(menu_df, columns=['Category', 'SubCategory', 'ItemName'], drop_first=True)

# Ensure consistent columns in menu_encoded
for col in X.columns:
    if col not in menu_encoded.columns:
        menu_encoded[col] = 0

# Predict Popularity Ratings
menu_X = menu_encoded[X.columns]
predictions = model.predict(menu_X)

# Calculate the total number of people in the crowd
crowd_size = 30

# Create a PDF with the predicted menu and most popular item estimates
pdf_filename = f"predicted_menu - {model} - {day_of_week}.pdf"
c = canvas.Canvas(pdf_filename, pagesize=letter)
y_position = 700

for category in menu_df['Category'].unique():
    c.setFont("Helvetica", 14)
    c.drawString(100, y_position, "Category: " + category)
    y_position -= 20

    for sub_category in menu_df[menu_df['Category'] == category]['SubCategory'].unique():
        c.setFont("Helvetica", 12)
        c.drawString(120, y_position, "Sub-Category: " + sub_category)
        y_position -= 15

        sub_category_items = menu_df[(menu_df['Category'] == category) & (menu_df['SubCategory'] == sub_category)]
        sub_category_indices = sub_category_items.index

        sub_category_menu_X = menu_X.loc[sub_category_indices]
        sub_category_predictions = model.predict(sub_category_menu_X)

        most_popular_index = sub_category_indices[sub_category_predictions.argmax()]
        most_popular_item = menu_df.loc[most_popular_index, 'ItemName']
        estimate = round(sub_category_predictions.max() / sub_category_predictions.sum() * crowd_size)

        c.drawString(150, y_position, f"Most Popular: {most_popular_item} ({estimate} people)")
        y_position -= 15

    y_position -= 20

# Print Model Accuracy
c.setFont("Helvetica", 12)
c.drawString(100, y_position, f"Model Accuracy (R-squared): {accuracy:.4f}")
y_position -= 20

c.save()
print(f"Predicted most popular menu with estimates saved as {pdf_filename}")