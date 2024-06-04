<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>TrendMine Add Product</title>
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
                            <h1>Add New Product to Existing Offer</h1>
                            <p class="breadcrumbs"><span><a href="index.html">Home</a></span>
                                <span><i class="mdi mdi-chevron-right"></i></span>Product</p>
                        </div>
                        <div>
                            <a href="product-list.html" class="btn btn-primary"> View All
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10">
                            <div class="card card-default">
                                <div class="card-header card-header-border-bottom">
                                    <h2>Add New Product to Existing Offer</h2>
                                </div>

                                <div class="card-body">
                                    <div class="row ec-vendor-uploads">
                                        <div class="col-lg-4">
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="ec-vendor-upload-detail">
                                                <form class="row g-3" method="post" action="addProductToOfferq.php">
                                                    <div class="col-md-6">
                                                        <label for="offerName" class="form-label">Offer Name</label>
                                                        <input list="offerNames" name="offerName" id="offerName" class="form-control">
                                                        <datalist id="offerNames">
                                                            <option value="Offer 1"></option>
                                                            <option value="Offer 2"></option>
                                                        </datalist>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="productName" class="form-label">Product Name</label>
                                                        <input list="productNames" name="productName" id="productName" class="form-control">
                                                        <datalist id="productNames">
                                                            <option value="Product 1"></option>
                                                            <option value="Product 2"></option>
                                                        </datalist>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="offerPrice" class="form-label">Offer Price</label>
                                                        <input type="number" name="offerPrice" class="form-control" id="offerPrice">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="offerDescription" class="form-label">Offer Description</label>
                                                        <textarea name="offerDescription" class="form-control" id="offerDescription" rows="2"></textarea>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn btn-primary">Submit</button>
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
