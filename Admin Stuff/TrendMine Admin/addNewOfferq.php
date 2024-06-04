<?php
session_start();

$servername = "DESKTOP-DB6965D\SQLEXPRESS";
$database = "Trendmine_Project";
$uid = ""; 
$pass = "";

$connectionOptions = [
    "Database" => $database,
    "Uid" => $uid,
    "PWD" => $pass
];

$con = sqlsrv_connect($servername, $connectionOptions) or die("Connection failed: " . print_r(sqlsrv_errors(), true));

$OfferName = isset($_POST['offerName']) ? $_POST['offerName'] : '';
$OfferDescription = isset($_POST['offerDescription']) ? $_POST['offerDescription'] : '';
$OfferStartDate = isset($_POST['offerStartDate']) ? $_POST['offerStartDate'] : '';
$OfferEndDate = isset($_POST['offerEndDate']) ? $_POST['offerEndDate'] : '';
$OfferDiscontPer = isset($_POST['discountPercentage']) ? $_POST['discountPercentage'] : '';
$OfferDetail = isset($_POST['offerDetails']) ? $_POST['offerDetails'] : '';

// Check if any input field is left empty
if (empty($OfferName) || empty($OfferDescription) || empty($OfferStartDate) || empty($OfferEndDate) || empty($OfferDiscontPer) || empty($OfferDetail)) {
    echo '<script>alert("Please fill in all the fields"); window.location.href = "Addcategory.html";</script>';
    exit;
}

$adminQuery = "INSERT INTO OfferTypes(OfferTypeName, OfferTypeDescription, StartDate, EndDate, DiscountPercentage, OtherOfferTypeDetails) OUTPUT INSERTED.OfferTypeID VALUES (?, ?, ?, ?, ?, ?)";
$adminParams = array($OfferName, $OfferDescription, $OfferStartDate, $OfferEndDate, $OfferDiscontPer, $OfferDetail,1,1);
$adminStmt = sqlsrv_query($con, $adminQuery, $adminParams);

if ($adminStmt) {
    echo '<script>alert("Offer Added Successfully"); window.location.href = "Addcategory.html";</script>';
} else {
    echo '<script>alert("Cannot Add Offer"); window.location.href = "Addcategory.html";</script>';
}

sqlsrv_close($con);
?>
