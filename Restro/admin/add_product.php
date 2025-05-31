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

// Function to fetch the last used product ID from the database
function getLastProductId()
{
  global $mysqli;
  $query = "SELECT MAX(prod_id) as last_product_id FROM rpos_products";
  $result = $mysqli->query($query);
  $row = $result->fetch_assoc();
  return $row['last_product_id'];
}

// Function to generate the next sequential product ID
function generateProductId()
{
  $last_product_id = getLastProductId();
  if (!$last_product_id) {
    $next_product_number = 1;
  } else {
    $last_product_number = (int)substr($last_product_id, 4); // Extract the numeric part and convert to integer
    $next_product_number = $last_product_number + 1;
  }
  return "PROD" . str_pad($next_product_number, 3, "0", STR_PAD_LEFT);
}

// Function to add a new product to the database
function addProduct($category_id, $prod_name, $prod_code, $prod_img, $prod_desc, $prod_price)
{
  global $mysqli;
  $prod_id = generateProductId();

  // Upload product image
  $target_dir = "assets/img/products/";
  $target_file = $target_dir . basename($prod_img["name"]);
  move_uploaded_file($prod_img["tmp_name"], $target_file);

  $query = "INSERT INTO rpos_products (prod_id, category_id, prod_code, prod_name, prod_img, prod_desc, prod_price) VALUES (?, ?, ?, ?, ?, ?, ?)";
  $stmt = $mysqli->prepare($query);
  $stmt->bind_param('sssssss', $prod_id, $category_id, $prod_code, $prod_name, $prod_img["name"], $prod_desc, $prod_price);
  $stmt->execute();
  $stmt->close();
}

// Handle form submission to add a new product
if (isset($_POST['addProduct'])) {
  if (
    empty($_POST["category_id"]) ||
    empty($_POST["prod_name"]) ||
    empty($_POST["prod_code"]) ||
    empty($_FILES["prod_img"]["name"]) ||
    empty($_POST["prod_desc"]) ||
    empty($_POST["prod_price"])
  ) {
    $err = "Blank Values Not Accepted";
  } else {
    $category_id = $_POST['category_id'];
    $prod_name = $_POST['prod_name'];
    $prod_code = $_POST['prod_code'];
    $prod_img = $_FILES['prod_img'];
    $prod_desc = $_POST['prod_desc'];
    $prod_price = $_POST['prod_price'];
    addProduct($category_id, $prod_name, $prod_code, $prod_img, $prod_desc, $prod_price);
    $success = "Product Added Successfully";
  }
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
      <!-- Add new product form -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              <h3>Add New Product</h3>
            </div>
            <div class="card-body">
              <form method="POST" enctype="multipart/form-data">
                <div class="form-row">
                  <div class="col-md-6">
                    <label>Product Category</label>
                    <select name="category_id" class="form-control">
                      <?php
                      $categories = getCategories();
                      while ($category = $categories->fetch_assoc()) {
                        echo '<option value="' . $category['category_id'] . '">' . $category['category_name'] . '</option>';
                      }
                      ?>
                    </select>
                  </div>
                  <div class="col-md-6">
                    <label>Product Name</label>
                    <input type="text" name="prod_name" class="form-control">
                  </div>
                </div>
                <div class="form-row mt-3">
                  <div class="col-md-6">
                    <label>Product Code</label>
                    <input type="text" name="prod_code" class="form-control">
                  </div>
                  <div class="col-md-6">
                    <label>Product Image</label>
                    <input type="file" name="prod_img" class="btn btn-outline-success form-control">
                  </div>
                </div>
                <div class="form-row mt-3">
                  <div class="col-md-6">
                    <label>Product Price</label>
                    <input type="text" name="prod_price" class="form-control">
                  </div>
                  <div class="col-md-6">
                    <label>Product Description</label>
                    <textarea rows="5" name="prod_desc" class="form-control"></textarea>
                  </div>
                </div>
                <br>
                <div class="form-row">
                  <div class="col-md-6">
                    <input type="submit" name="addProduct" value="Add Product" class="btn btn-success">
                  </div>
                </div>
              </form>
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
