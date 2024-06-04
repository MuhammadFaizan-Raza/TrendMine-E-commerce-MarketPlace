<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Update User</title>

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
                <h1>Update User</h1>
                <p class="breadcrumbs">
                  <span><a href="index.html">Home</a></span>
                  <span><i class="mdi mdi-chevron-right"></i></span>User
                  Registration
                </p>
              </div>
              <div></div>
            </div>
            <div class="row">
              <div class="col-10">
                <div class="card card-default">
                  <div class="card-header card-header-border-bottom">
                    <h2>Update User</h2>
                  </div>
                  <div class="card-body">
                    <div class="row ec-vendor-uploads">
                      <div class="col-lg-4"></div>
                      <div class="col-lg-8">
                        <div class="ec-vendor-upload-detail">
                          <form
                            class="row g-3"
                            method="post"
                            action="updateUserq.php"
                          >
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
                                                            $sql = "SELECT UserID FROM UserProfiles";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["UserID"] . '">' . $row["UserID"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>

                            <div class="col-md-6">
                              <label for="fullName" class="form-label"
                                >User Name</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="fullName"
                                name="fullName"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="userPassword" class="form-label"
                                >User Password</label
                              >
                              <input
                                type="password"
                                class="form-control"
                                id="userPassword"
                                name="userPassword"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="confirmPassword" class="form-label"
                                >Confirm Password</label
                              >
                              <input
                                type="password"
                                class="form-control"
                                id="confirmPassword"
                                name="confirmPassword"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="mobileOrEmail" class="form-label"
                                >Mobile Number or Email</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="mobileOrEmail"
                                name="mobileOrEmail"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="dob" class="form-label"
                                >Date of Birth (Optional)</label
                              >
                              <input
                                type="date"
                                class="form-control"
                                id="dob"
                                name="dob"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="address" class="form-label"
                                >Address (Optional)</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="address"
                                name="address"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="gender" class="form-label"
                                >Gender</label
                              >
                              <select
                                name="gender"
                                id="gender"
                                class="form-select"
                              >
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="other">Other</option>
                              </select>
                            </div>
                            <div class="col-md-12">
                              <button type="submit" class="btn btn-primary">
                                Update
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
