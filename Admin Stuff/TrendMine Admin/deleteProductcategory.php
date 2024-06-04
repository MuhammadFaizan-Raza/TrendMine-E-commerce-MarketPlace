<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <title>Delete Product Category</title>
   
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700;800&amp;family=Poppins:wght@300;400;500;600;700;800;900&amp;family=Roboto:wght@400;500;700;900&amp;display=swap" rel="stylesheet">

    <link  rel="stylesheet" href="assets/css/trendmind.css" />
</head>
<body class="ec-header-fixed ec-sidebar-fixed ec-sidebar-dark ec-header-light" id="body">
    <div class="wrapper">
        <div class="ec-page-wrapper">
            <div class="ec-content-wrapper">
                <div class="content">
                    <div class="breadcrumb-wrapper breadcrumb-wrapper-2 breadcrumb-contacts">
                        <h1>Update Main Category</h1>
                        <p class="breadcrumbs">
                            <span><a href="index.html">Home</a></span>
                            <span><i class="mdi mdi-chevron-right"></i></span>Main Category
                        </p>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="ec-cat-list card card-default mb-24px">
                                <div class="card-body">
                                    <div class="ec-cat-form">
                                        <h4>Update Category</h4>
                                        <form method = "post" action = "deleteProductcategoryq.php">
                                            <div class="form-group row" >
                                                <label for="categoryID" class="col-lg-6 col-form-label">Product Category ID</label>
                                                <div class="col-lg-6">
                                                    <input id="categoryID" name="categoryID" class="form-control here" type="text" list="categoryIDs">
                                                    <datalist id="categoryIDs">
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
                                                            $sql = "SELECT CategoryID FROM Productcategory";
                                                            $result = sqlsrv_query($con, $sql);
                                                            if ($result !== false) {
                                                                while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                                                                    echo '<option value="' . $row["CategoryID"] . '">' . $row["CategoryID"] . '</option>';
                                                                }
                                                              }
                                                           sqlsrv_close($con);
                                                            ?>
                                                    </datalist>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="categoryName" class="col-lg-6 col-form-label">Product Category Name</label>
                                                <div class="col-lg-6">
                                                    <input id="categoryName" name="categoryName" class="form-control here slug-title" type="text">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="taxPoints" class="col-lg-6 col-form-label">Tax Percentage</label>
                                                <div class="col-lg-6">
                                                    <input id="taxPoints" name="taxPoints" class="form-control here" type="number" step="0.01" min="0" max="100">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="returnPolicyInfo" class="col-4 col-form-label">Return Policy Info</label>
                                                <div class="col-lg-8">
                                                    <textarea id="returnPolicyInfo" name="returnPolicyInfo" cols="40" rows="3" class="form-control"></textarea>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="warrantyInfo" class="col-12 col-form-label">Warranty Info</label>
                                                <div class="col-lg-8">
                                                    <textarea id="warrantyInfo" name="warrantyInfo" cols="40" rows="3" class="form-control"></textarea>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-12">
                                                    <button name="submit" type="submit" class="btn btn-primary">Update</button>
                                                </div>
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
</body>
</html>
