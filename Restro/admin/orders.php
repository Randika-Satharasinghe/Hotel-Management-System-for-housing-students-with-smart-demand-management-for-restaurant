<?php
session_start();
include('config/config.php');
include('config/checklogin.php');
check_login();

// Function to fetch all products by category from the database
function getProductsByCategory($category_id)
{
  global $mysqli;
  $query = "SELECT p.*, c.category_name FROM rpos_products p JOIN rpos_category c ON p.category_id = c.category_id WHERE p.category_id = ?";
  $stmt = $mysqli->prepare($query);
  $stmt->bind_param("i", $category_id);
  $stmt->execute();
  $result = $stmt->get_result();
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

require_once('partials/_head.php');
?>

<body>
  <!-- Sidenav -->
  <?php
  require_once('partials/_sidebar.php');
  ?>
  <!-- Main content -->
  <div class="main-content">
    <!-- Top navbar -->
    <?php
    require_once('partials/_topnav.php');
    ?>
    <!-- Header -->
    <div style="background-image: url(assets/img/theme/restro00.jpg); background-size: cover;" class="header  pb-8 pt-5 pt-md-8">
      <span class="mask bg-gradient-dark opacity-8"></span>
      <div class="container-fluid">
        <div class="header-body">
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--8">
      <!-- Category Dropdown -->
      <div class="row mb-4">
        <div class="col-md-6">
          <form method="get">
            <select class="form-control" name="category_id" onchange="this.form.submit()">
              <option value="0">All Categories</option>
              <?php
              $categories = getCategories();
              while ($category = $categories->fetch_assoc()) {
                $selected = (isset($_GET['category_id']) && $_GET['category_id'] == $category['category_id']) ? 'selected' : '';
                echo "<option value='{$category['category_id']}' {$selected}>{$category['category_name']}</option>";
              }
              ?>
            </select>
          </form>
        </div>
      </div>
      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              Select On Any Product To Make An Order
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col"><b>Image</b></th>
                    <th scope="col"><b>Product Code</b></th>
                    <th scope="col"><b>Name</b></th>
                    <th scope="col"><b>Price</b></th>
                    <th scope="col"><b>Category</b></th>
                    <th scope="col"><b>Action</b></th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $category_id = 0; // Show all products initially
                  if (isset($_GET['category_id'])) {
                    $category_id = $_GET['category_id'];
                  }

                  $products = getProductsByCategory($category_id);
                  while ($prod = $products->fetch_assoc()) {
                  ?>
                    <tr>
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
                      <td><?php echo $prod['category_name']; ?></td>
                      <td>
                        <a href="make_oder.php?prod_id=<?php echo $prod['prod_id']; ?>&prod_name=<?php echo $prod['prod_name']; ?>&prod_price=<?php echo $prod['prod_price']; ?>">
                          <button class="btn btn-sm btn-warning">
                            <i class="fas fa-cart-plus"></i>
                            Place Order
                          </button>
                        </a>
                      </td>
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- Footer -->
      <?php
      require_once('partials/_footer.php');
      ?>
    </div>
  </div>
  <!-- Argon Scripts -->
  <?php
  require_once('partials/_scripts.php');
  ?>
</body>
</html>
