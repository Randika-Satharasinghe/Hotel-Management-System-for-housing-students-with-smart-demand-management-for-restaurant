<?php
session_start();
include('config/config.php');
include('config/checklogin.php');
check_login();

// Function to fetch all products from the database
function getProducts()
{
  global $mysqli;
  $query = "SELECT p.*, c.category_name FROM rpos_products p
            LEFT JOIN rpos_category c ON p.category_id = c.category_id";
  $result = $mysqli->query($query);
  return $result;
}

// Function to fetch all categories from the database
function getCategories()
{
  global $mysqli;
  $query = "SELECT * FROM rpos_category";
  $result = $mysqli->query($query);
  return $result;
}

// Function to fetch products based on selected category
function getProductsByCategory($category_id)
{
  global $mysqli;
  $query = "SELECT p.*, c.category_name, 
            (SELECT SUM(prod_qty) FROM rpos_orders WHERE prod_id = p.prod_id AND DATE(created_at) = CURDATE()) AS popularity
            FROM rpos_products p
            LEFT JOIN rpos_category c ON p.category_id = c.category_id
            WHERE p.category_id = '$category_id'";
  $result = $mysqli->query($query);
  return $result;
}

// Function to fetch today's all order quantity
function getTodayTotalOrderQuantity()
{
  global $mysqli;
  $query = "SELECT SUM(prod_qty) as total_quantity FROM rpos_orders WHERE DATE(created_at) = CURDATE()";
  $result = $mysqli->query($query);
  $data = $result->fetch_assoc();
  return $data['total_quantity'] ?: 1; // Prevent division by zero
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
      <!-- Category selection -->
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <div class="card">
            <div class="card-body">
              <h2 class="card-title">Select Category</h2>
              <form action="" method="post">
                <div class="form-group">
                  <label for="category">Category:</label>
                  <select class="form-control" name="category" id="category" onchange="this.form.submit()">
                    <option value="">All Categories</option>
                    <?php
                    $categories = getCategories();
                    while ($category = $categories->fetch_assoc()) {
                      echo "<option value='{$category['category_id']}'>{$category['category_name']}</option>";
                    }
                    ?>
                  </select>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Category</th>
                    <th scope="col">Image</th>
                    <th scope="col">Product Code</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Popularity (Today)</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  if (isset($_POST['category']) && !empty($_POST['category'])) {
                    $selected_category_id = $_POST['category'];
                    $products = getProductsByCategory($selected_category_id);
                  } else {
                    // If no category is selected, show all products
                    $products = getProducts();
                  }

                  $today_total_order_quantity = getTodayTotalOrderQuantity();
                  while ($prod = $products->fetch_assoc()) {
                    $today_product_order_quantity = 0;
                    $query = "SELECT SUM(prod_qty) as product_quantity FROM rpos_orders WHERE prod_id = '{$prod['prod_id']}' AND DATE(created_at) = CURDATE()";
                    $result = $mysqli->query($query);
                    $data = $result->fetch_assoc();
                    if ($data['product_quantity']) {
                      $today_product_order_quantity = $data['product_quantity'];
                    }
                    $popularity = ($today_product_order_quantity / $today_total_order_quantity) * 100;
                  ?>
                    <tr>
                      <td><?php echo $prod['category_name']; ?></td>
                      <td>
                        <?php
                        if ($prod['prod_img']) {
                          echo "<img src='assets/img/products/{$prod['prod_img']}' height='60' width='60' class='img-thumbnail'>";
                        } else {
                          echo "<img src='assets/img/products/default.jpg' height='60' width='60' class='img-thumbnail'>";
                        }
                        ?>
                      </td>
                      <td><?php echo $prod['prod_code']; ?></td>
                      <td><?php echo $prod['prod_name']; ?></td>
                      <td>$ <?php echo $prod['prod_price']; ?></td>
                      <td><?php echo number_format($popularity, 2) . '%'; ?></td>
                    </tr>
                  <?php } ?>
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
