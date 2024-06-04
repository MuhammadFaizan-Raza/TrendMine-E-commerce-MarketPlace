<!DOCTYPE html>
<html lang="en" dir="ltr">
  <!-- (e.g.cancel hogaya tu usko shipped sy rook dena ,koi order kisi wajah sy cancel karawna, custom order, out-of-stock, payment method change hogaya wagaira item and many other reasons)-->
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Delete Cancel Order</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700;800&amp;family=Poppins:wght@300;400;500;600;700;800;900&amp;family=Roboto:wght@400;500;700;900&amp;display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./assets/css/trendmind.css" />
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
                <h1>Delete Order</h1>
              </div>
            </div>
            <div class="row">
              <div class="col-10">
                <div class="card card-default">
                  <div class="card-header card-header-border-bottom">
                    <h2>Delete Order</h2>
                  </div>

                  <div class="card-body">
                    <div class="row ec-vendor-uploads">
                      <div class="col-lg-4"></div>
                      <div class="col-lg-8">
                        <div class="ec-vendor-upload-detail">
                          <form
                            class="row g-3"
                            method="post"
                            action="deletecancelOrderq.php"
                          >
                            <div class="col-md-6">
                              <label for="orderID" class="form-label"
                                >Order ID</label
                              >
                              <input
                                list="orderIDs"
                                name="orderID"
                                id="orderID"
                                class="form-control"
                              />
                              <datalist id="orderIDs">
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
                                                            $sql = "SELECT OrderID FROM OrderInfo";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["OrderID"] . '">' . $row["OrderID"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>
                            <div class="col-md-6">
                              <label for="paymentID" class="form-label"
                                >Payment ID</label
                              >
                              <input
                                list="paymentIDs"
                                name="paymentID"
                                id="paymentID"
                                class="form-control"
                              />
                              <datalist id="paymentIDs">
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
                                                            $sql = "SELECT PaymentID FROM OrderInfo";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["PaymentID"] . '">' . $row["PaymentID"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>
                            <div class="col-md-6">
                              <label for="userID" class="form-label"
                                >User ID</label
                              >
                              <input
                                list="userIDs"
                                name="userID"
                                id="userID"
                                class="form-control"
                              />
                              <datalist id="userIDs">
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
                                                            $sql = "SELECT userID FROM UserProfiles";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["userID"] . '">' . $row["userID"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>
                            <div class="col-md-6">
                              <label for="cartID" class="form-label"
                                >Cart ID</label
                              >
                              <input
                                list="cartIDs"
                                name="cartID"
                                id="cartID"
                                class="form-control"
                              />
                              <datalist id="cartIDs">
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
                                                            $sql = "SELECT cart_id FROM OrderInfo";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["cart_id"] . '">' . $row["cart_id"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>
                            <div class="col-md-6">
                              <label for="discountApplied" class="form-label"
                                >Discount Applied (%)</label
                              >
                              <input
                                type="number"
                                class="form-control"
                                id="discountApplied"
                                step="0.01"
                                min="0"
                                max="100"
                              />
                            </div>
                            <div class="col-md-6">
                              <label for="orderStatus" class="form-label"
                                >Order Status</label
                              >
                              <input
                                list="orderStatusOptions"
                                name="orderStatus"
                                id="orderStatus"
                                class="form-control"
                              />
                              <datalist id="orderStatusOptions">
                                <option value="Pending"></option>
                                <option value="Processing"></option>
                                <option value="Shipped"></option>
                                <option value="Delivered"></option>
                                <option value="Cancelled"></option>
                              </datalist>
                            </div>
                            <div class="col-md-6">
                              <label for="finalPrice" class="form-label"
                                >Final Price</label
                              >
                              <input
                                type="number"
                                class="form-control"
                                id="finalPrice"
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
