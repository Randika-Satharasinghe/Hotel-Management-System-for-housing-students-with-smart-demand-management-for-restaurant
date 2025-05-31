<?php
session_start();
include('config/config.php');
include('config/checklogin.php');

check_login();

// Function to fetch all categories from the database
function getCategories()
{
  global $mysqli;
  $query = "SELECT * FROM rpos_category";
  $result = $mysqli->query($query);
  return $result;
}

// Function to fetch the last used category ID from the database
function getLastCategoryId()
{
  global $mysqli;
  $query = "SELECT MAX(category_id) as last_category_id FROM rpos_category";
  $result = $mysqli->query($query);
  $row = $result->fetch_assoc();
  return $row['last_category_id'];
}

// Function to generate the next sequential category ID
function generateCategoryId()
{
  $last_category_id = getLastCategoryId();
  if (!$last_category_id) {
    $next_category_number = 1;
  } else {
    $last_category_number = (int) substr($last_category_id, 1); // Extract the numeric part and convert to integer
    $next_category_number = $last_category_number + 1;
  }
  return "C" . str_pad($next_category_number, 3, "0", STR_PAD_LEFT);
}

// Function to add a new category to the database
function addCategory($category_name)
{
  global $mysqli;
  $category_id = generateCategoryId();
  $status = "Active"; // Set the initial status for the category, you can change it if needed

  $query = "INSERT INTO rpos_category (category_id, category_name, status) VALUES (?, ?, ?)";
  $stmt = $mysqli->prepare($query);
  if (!$stmt) {
    die("Error: " . $mysqli->error); // Display error if the query is not prepared properly
  }

  $stmt->bind_param('sss', $category_id, $category_name, $status);
  if (!$stmt->execute()) {
    die("Error: " . $stmt->error); // Display error if the query execution fails
  }

  $stmt->close();
}

// Function to delete a category from the database
function deleteCategory($category_id)
{
  global $mysqli;
  $query = "DELETE FROM rpos_category WHERE category_id = ?";
  $stmt = $mysqli->prepare($query);
  if (!$stmt) {
    die("Error: " . $mysqli->error); // Display error if the query is not prepared properly
  }

  $stmt->bind_param('s', $category_id);
  if (!$stmt->execute()) {
    die("Error: " . $stmt->error); // Display error if the query execution fails
  }

  $stmt->close();
}

// Handle form submission to add a new category
if (isset($_POST['addCategory'])) {
  if (empty($_POST["category_name"])) {
    $err = "Blank Values Not Accepted";
  } else {
    $category_name = $_POST['category_name'];
    addCategory($category_name);
    $success = "Category Added Successfully";
  }
}

// Handle form submission to delete a category
if (isset($_POST['deleteCategory'])) {
  $category_id = $_POST['category_id'];
  deleteCategory($category_id);
  $success = "Category Deleted Successfully";
}

require_once('partials/_head.php');
?>

<body>
  <!-- Sidenav -->
  <?php require_once('partials/_sidebar.php'); ?>

  <!-- Main content -->
  <div class="main-content">
    <!-- Top navbar -->
    <?php require_once('partials/_topnav.php'); ?>

    <!-- Header -->
    <div style="background-image: url(assets/img/theme/restro00.jpg); background-size: cover;" class="header pb-8 pt-5 pt-md-8">
      <span class="mask bg-gradient-dark opacity-8"></span>
      <div class="container-fluid">
        <div class="header-body">
        </div>
      </div>
    </div>

    <!-- Page content -->
    <div class="container-fluid mt--8">
      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3>Add New Category</h3>
            </div>
            <div class="card-body">
              <!-- Add new category form -->
              <form method="POST">
                <div class="form-row">
                  <div class="col-md-6">
                    <label>Category Name</label>
                    <input type="text" name="category_name" class="form-control">
                  </div>
                </div>
                <div class="form-row mt-3">
                  <div class="col-md-6">
                    <input type="submit" name="addCategory" value="Add Category" class="btn btn-success">
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Existing Categories Table -->
      <div class="row mt-4">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3>Existing Categories</h3>
            </div>
            <div class="card-body">
              <!-- Display existing categories in a table -->
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Category ID</th>
                    <th scope="col">Category Name</th>
                    <th scope="col">Status</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $categories = getCategories();
                  while ($category = $categories->fetch_assoc()) {
                  ?>
                    <tr>
                      <td><?php echo $category['category_id']; ?></td>
                      <td><?php echo $category['category_name']; ?></td>
                      <td><?php echo $category['status']; ?></td>
                      <td>
                        <form method="POST">
                          <input type="hidden" name="category_id" value="<?php echo $category['category_id']; ?>">
                          <button type="submit" name="deleteCategory" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                      </td>
                    </tr>
                  <?php
                  }
                  ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <!-- Footer -->
      <?php require_once('partials/_footer.php'); ?>
    </div>
  </div>

  <!-- Argon Scripts -->
  <?php require_once('partials/_scripts.php'); ?>
</body>
</html>
