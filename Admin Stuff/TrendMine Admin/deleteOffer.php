<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Delete Offer</title>

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
                <h1>Delete Offer Type</h1>
                <p class="breadcrumbs">
                  <span><a href="index.html">Home</a></span>
                  <span><i class="mdi mdi-chevron-right"></i></span>Offer
                </p>
              </div>
              <div>
                <a href="offer-list.html" class="btn btn-primary">
                  View All Offers
                </a>
              </div>
            </div>
            <div class="row">
              <div class="col-10">
                <div class="card card-default">
                  <div class="card-header card-header-border-bottom">
                    <h2>Delete Offer Type</h2>
                  </div>

                  <div class="card-body">
                    <div class="row ec-vendor-uploads">
                      <div class="col-lg-4"></div>
                      <div class="col-lg-10">
                        <div class="ec-vendor-upload-detail">
                          <form
                            class="row g-3"
                            method="post"
                            action="deleteOfferq.php"
                          >
                            <div class="col-md-6">
                              <label for="offerTypeID" class="form-label"
                                >Offer Type ID</label
                              >
                              <input
                                list="offerTypeIDs"
                                name="offerTypeID"
                                id="offerTypeID"
                                class="form-control"
                              />
                              <datalist id="offerTypeIDs">
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
                                                            $sql = "SELECT OfferTypeID FROM OfferTypes";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["OfferTypeID"] . '">' . $row["OfferTypeID"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                              </datalist>
                            </div>

                            <div class="col-md-6">
                              <label for="offerName" class="form-label"
                                >Offer Name</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="offerName"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="offerDescription" class="form-label"
                                >Offer Description</label
                              >
                              <input
                                type="text"
                                class="form-control"
                                id="offerDescription"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="offerStartDate" class="form-label"
                                >Offer Start Date</label
                              >
                              <input
                                type="date"
                                class="form-control"
                                id="offerStartDate"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="offerEndDate" class="form-label"
                                >Offer End Date</label
                              >
                              <input
                                type="date"
                                class="form-control"
                                id="offerEndDate"
                              />
                            </div>

                            <div class="col-md-6">
                              <label for="discountPercentage" class="form-label"
                                >Discount Percentage</label
                              >
                              <input
                                type="number"
                                class="form-control"
                                id="discountPercentage"
                                step="0.01"
                                min="0"
                                max="100"
                              />
                            </div>

                            <div class="col-md-12">
                              <label for="offerDetails" class="form-label"
                                >Offer Details</label
                              >
                              <textarea
                                class="form-control"
                                id="offerDetails"
                                rows="2"
                              ></textarea>
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
