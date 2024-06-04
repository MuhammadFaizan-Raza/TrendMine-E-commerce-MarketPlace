<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Delete Admin</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700;800&amp;family=Poppins:wght@300;400;500;600;700;800;900&amp;family=Roboto:wght@400;500;700;900&amp;display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/css/trendmind.css" />
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
                <h1>Delete Admin</h1>
              </div>
            </div>
            <div class="row">
              <div class="col-10">
                <div class="card card-default">
                  <div class="card-header card-header-border-bottom">
                    <h2>Delete Admin</h2>
                  </div>
                  <div class="card-body">
                    <div class="row ec-vendor-uploads">
                      <div class="col-lg-4"></div>
                      <div class="col-lg-8">
                        <div class="ec-vendor-upload-detail">
                          <form class="row g-3" method="post" action="deleteAdminQ.php">
                          <div class="col-md-6">
    <label for="adminID" class="form-label">Admin ID</label>
    <input list="adminIDs" name="adminID" id="adminID" class="form-control" />
    <datalist id="adminIDs">
        <?php
        session_start();
        $servername = "FAIZANRAZA\\SQLEXPRESS";
        $database = "Trendmine_Project_93";
        $uid = ""; 
        $pass = "";        
        $connection = [
            "Database" => $database,
            "Uid" => $uid,
            "PWD" => $pass
        ];
        $con = sqlsrv_connect($servername, $connection) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
        $sql = "SELECT AdminID FROM Administration";
        $result = sqlsrv_query($con, $sql);
        if ($result !== false) {
            while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                echo '<option value="' . $row["AdminID"] . '">' . $row["AdminID"] . '</option>';
            }
          }
       sqlsrv_close($con);
        ?>
    </datalist>
</div>

                            <div class="col-md-6">
                              <label for="adminEmailOrPhone" class="form-label"
                                >Email or Phone Number</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="adminEmailOrPhone"
                              />
                            </div>
                            <div class="col-md-6">
                              <label for="adminPassword" class="form-label"
                                >Password</label
                              >
                              <input
                                type="password"
                                class="form-control"
                                id="adminPassword"
                              />
                            </div>
                            <div class="col-md-12">
                              <label for="adminRole" class="form-label"
                                >Role of Admin</label
                              >
                              <select
                                name="adminRole"
                                id="adminRole"
                                class="form-select"
                              >
                                <option value="administrator">
                                  Administrator
                                </option>
                                <option value="productManager">
                                  Product Manager
                                </option>
                                <option value="orderManager">
                                  Order Manager
                                </option>
                                <option value="customerSupport">
                                  Customer Support
                                </option>
                                <option value="contentManager">
                                  Content Manager
                                </option>
                                <option value="marketingManager">
                                  Marketing Manager
                                </option>
                                <option value="financeManager">
                                  Finance Manager
                                </option>
                              </select>
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
