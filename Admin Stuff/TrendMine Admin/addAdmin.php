<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Register Admin</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700;800&amp;family=Poppins:wght@300;400;500;600;700;800;900&amp;family=Roboto:wght@400;500;700;900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/trendmind.css" />
</head>
<body class="ec-header-fixed ec-sidebar-fixed ec-sidebar-dark ec-header-light" id="body">
    <div class="wrapper">
        <div class="ec-page-wrapper">
            <div class="ec-content-wrapper">
                <div class="content">
                    <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
                        <div>
                            <h1>Register Admin</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10">
                            <div class="card card-default">
                                <div class="card-header card-header-border-bottom">
                                    <h2>Register Admin</h2>
                                </div>
                                <div class="card-body">
                                    <div class="row ec-vendor-uploads">
                                        <div class="col-lg-4">
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="ec-vendor-upload-detail">
                                                <form method="post" action="addAdminQ.php" class="row g-3">
                                                    <div class="col-md-6">
                                                        <label for="adminEmailOrPhone" class="form-label">Email or Phone Number</label>
                                                        <input type="text" class="form-control" id="adminEmailOrPhone" name="adminEmailOrPhone">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="adminPassword" class="form-label">Password</label>
                                                        <input type="password" class="form-control" id="adminPassword" name="adminPassword">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="adminRole" class="form-label">Role of Admin</label>
                                                        <select name="adminRole" id="adminRole" class="form-select">
                                                            <option value="Administrator">Administrator</option>
                                                            <option value="Product Manager">Product Manager</option>
                                                            <option value="Order Manager">Order Manager</option>
                                                            <option value="Customer Support">Customer Support</option>
                                                            <option value="Content Manager">Content Manager</option>
                                                            <option value="Marketing Manager">Marketing Manager</option>
                                                            <option value="Finance Manager">Finance Manager</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn btn-primary">Register</button>
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
