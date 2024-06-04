<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Trendmine Delete Inventory</title>

    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700;800&amp;family=Poppins:wght@300;400;500;600;700;800;900&amp;family=Roboto:wght@400;500;700;900&amp;display=swap"
      rel="stylesheet"
    />

    <link id="ekka-css" rel="stylesheet" href="assets/css/trendmind.css" />
  </head>
  <body
    class="ec-header-fixed ec-sidebar-fixed ec-sidebar-dark ec-header-light"
    id="body"
  >
    <div class="wrapper">
      <div class="ec-page-wrapper">
        <div class="ec-content-wrapper">
          <div class="content">
            <div
              class="breadcrumb-wrapper d-flex align-items-center justify-content-between"
            >
              <div>
                <h1>Delete Inventory</h1>
                <p class="breadcrumbs">
                  <span><a href="index.html">Home</a></span>
                  <span><i class="mdi mdi-chevron-right"></i></span>Inventory
                </p>
              </div>
              <div>
                <a href="inventory-list.html" class="btn btn-primary">
                  View All
                </a>
              </div>
            </div>
            <div class="row">
              <div class="col-10">
                <div class="card card-default">
                  <div class="card-header card-header-border-bottom">
                    <h2>Delete Inventory</h2>
                  </div>
                  <div class="card-body">
                    <div class="row ec-vendor-uploads">
                      <div class="col-lg-4"></div>
                      <div class="col-lg-8">
                        <div class="ec-vendor-upload-detail">
                          <form
                            class="row g-3"
                            method="post"
                            action="deleteInventoryq.php"
                          >
                            <div class="col-md-6">
                              <label for="productInventoryID" class="form-label"
                                >Product Inventory ID</label
                              >
                              <input
                                list="productInventoryIDs"
                                name="productInventoryID"
                                id="productInventoryID"
                                class="form-control"
                              />
                              <datalist id="productInventoryIDs">
                              <?php
                                                            session_start();
                                                            $servername = "DESKTOP-DB6965D\SQLEXPRESS";
                                                            $database = "Trendmine_Project";
                                                            $uid = ""; 
                                                            $pass = "";        
                                                            $connection = [
                                                                "Database" => $database,
                                                                "Uid" => $uid,
                                                                "PWD" => $pass
                                                            ];
                                                            $con = sqlsrv_connect($servername, $connection) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
                                                            $sql = "SELECT InventoryID FROM Inventory";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["InventoryID"] . '">' . $row["InventoryID"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>

                            <div class="col-md-6">
                              <label for="itemName" class="form-label"
                                >Name</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="itemName"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="quantity" class="form-label"
                                >Quantity</label
                              >
                              <input
                                type="number"
                                class="form-control"
                                id="quantity"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="supplierID" class="form-label"
                                >Supplier ID</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="supplierID"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="expireDate" class="form-label"
                                >Expire Date</label
                              >
                              <input
                                type="date"
                                class="form-control"
                                id="expireDate"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="warehouseName" class="form-label"
                                >Warehouse Name</label
                              >
                              <input
                                type="text"
                                list="warehouseOptions"
                                class="form-control"
                                id="warehouseName"
                              />
                              <datalist id="warehouseOptions">
                              <?php
                                                            session_start();
                                                            $servername = "DESKTOP-DB6965D\SQLEXPRESS";
                                                            $database = "Trendmine_Project";
                                                            $uid = ""; 
                                                            $pass = "";        
                                                            $connection = [
                                                                "Database" => $database,
                                                                "Uid" => $uid,
                                                                "PWD" => $pass
                                                            ];
                                                            $con = sqlsrv_connect($servername, $connection) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
                                                            $sql = "SELECT Warehousename FROM Warehouse";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["WarehouseName"] . '">' . $row["WarehouseName"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>

                            <div class="col-md-6">
                              <label for="pricePerPiece" class="form-label"
                                >Price Per Piece (Cost)</label
                              >
                              <input
                                type="number"
                                class="form-control"
                                id="pricePerPiece"
                              />
                            </div>
                            <div class="col-md-12">
                              <button type="submit" class="btn btn-primary">
                                Delete
                              </button>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
