

<?php
// Replace with the actual paths
//$venvPath = 'C:/Users/ASUS/PycharmProjects/hello/venv';
//$pythonScriptPath = 'C:/Users/ASUS/PycharmProjects/hello/random forest.py';

// Command to activate the virtual environment
//$activateCommand = "$venvPath/bin/activate";

// Command to run the Python script
//$pythonCommand = "$venvPath/bin/python $pythonScriptPath";

// Execute the commands
//$output = shell_exec($pythonScriptPath);

// Display the Python script's output
//echo "<pre>$output</pre>";
//echo "output";

// ------------------------------------------------------------------------------------------------

// Command to run the Python script
//$pythonScript = "python3 C:\\Users\\ASUS\\PycharmProjects\\hello\\random.py"; // Replace with the actual path to your Python script

// Execute the Python script and capture the output
//$output = shell_exec($pythonScript);

// Display the output
//echo "Output from Python script4:<br>";
//echo "<pre>$output</pre>";
//$pythonInterpreter = "C:\\path\\to\\python3.exe"; // Replace with the actual path

// Define the absolute path to the Python script
//$pythonScript = "C:\\Users\\ASUS\\PycharmProjects\\hello\\random.py"; // Replace with the actual path

// Execute the Python script
//$output = shell_exec("$pythonInterpreter $pythonScript");

// Display the output
//echo "Output from Python script:<br>";
//echo "<pre>$output</pre>";
session_start();
include('config/config.php');
include('config/checklogin.php');
check_login();

// Define the date for which you want to calculate popularity (e.g., today)
$selectedDate = date("Y-m-d");

// SQL query to retrieve order details and relevant product info
$sql = "SELECT o.prod_id, o.quantity, p.category, p.subcategory, p.prod_name
        FROM rpos_orders AS o
        INNER JOIN products AS p ON o.prod_id = p.prod_id
        WHERE DATE(o.order_date) = '$selectedDate'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Initialize an array to store popularity data
    $popularityData = array();

    while ($row = $result->fetch_assoc()) {
        $prodId = $row["prod_id"];
        $quantity = $row["quantity"];
        $category = $row["category"];
        $subcategory = $row["subcategory"];
        $prodName = $row["prod_name"];

        // Calculate the total quantity of the item ordered within the day
        if (!isset($popularityData[$prodId])) {
            $popularityData[$prodId] = array(
                "quantity" => 0,
                "subcategory_quantity" => 0,
                "prod_name" => $prodName,
                "category" => $category,
                "subcategory" => $subcategory,
            );
        }

        $popularityData[$prodId]["quantity"] += $quantity;
    }

    // Calculate the total quantity of items in each subcategory within the day
    $subcategoryTotals = array();

    foreach ($popularityData as $item) {
        $subcategoryKey = $item["category"] . '-' . $item["subcategory"];
        if (!isset($subcategoryTotals[$subcategoryKey])) {
            $subcategoryTotals[$subcategoryKey] = 0;
        }
        $subcategoryTotals[$subcategoryKey] += $item["quantity"];
    }

    // Calculate and insert popularity ratings
    foreach ($popularityData as $prodId => $item) {
        $subcategoryKey = $item["category"] . '-' . $item["subcategory"];
        $popularityData[$prodId]["popularity_rating"] =
            $item["quantity"] / $subcategoryTotals[$subcategoryKey];

        // Insert data into the menu_data table
        $dayOfWeek = date('l', strtotime($selectedDate));
        $itemName = $item["prod_name"];
        $popularityRating = $popularityData[$prodId]["popularity_rating"];
        $category = $item["category"];
        $subcategory = $item["subcategory"];

        $insertSql = "INSERT INTO menu_data (DayOfWeek, ItemName, PopularityRating, Category, SubCategory)
                      VALUES ('$dayOfWeek', '$itemName', $popularityRating, '$category', '$subcategory')";

        if ($conn->query($insertSql) === TRUE) {
            echo "Data inserted successfully.";
        } else {
            echo "Error inserting data: " . $conn->error;
        }
    }
} else {
    echo "No orders found for the selected date.";
}

$output = shell_exec("C:\Users\ASUS\PycharmProjects\hello\venv\Scripts\python.exe 'C:\Users\ASUS\PycharmProjects\hello\random forest.py' ");
print_r($output);



?>
