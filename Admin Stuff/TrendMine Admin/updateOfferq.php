<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $OfferTypeID= $_POST['offerTypeID'];
    $OfferName =  $_POST['offerName'];
    $OfferDescription =  $_POST['offerDescription'];
    $StartDate =  $_POST['offerStartDate'];
    $Enddate =  $_POST['offerEndDate'];
    $DiscountPer =  $_POST['discountPercentage'];
    $OfferDetails =  $_POST['offerDetails'];
    $servername = "DESKTOP-DB6965D\SQLEXPRESS";
    $database = "Trendmine_Project";
    $uid = ""; 
    $pass = "";        
    $connection = [
        "Database" => $database,
        "Uid" => $uid,
        "PWD" => $pass
    ];
    $conn = sqlsrv_connect($servername, $connection) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
    $sql = "UPDATE OfferTypes SET OfferTypeName = ?,  OfferTypeDescription= ?, StartDate = ?,EndDate = ?, DiscountPercentage = ?, OtherOfferTypeDetails = ? WHERE OfferTypeID = ?";
    $params = array($OfferName, $OfferDescription, $StartDate, $Enddate, $DiscountPer, $OfferDetails, $OfferTypeID);
    $result = sqlsrv_query($conn, $sql, $params);
    if ($result !== false) {
        echo "Update successful!";
    } else {
        echo "Update failed: " . print_r(sqlsrv_errors(), true);
    }
    sqlsrv_close($conn);
}
?>