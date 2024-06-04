<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $ProductofferID= $_POST['productOfferID'];
    $OfferName =  $_POST['offerName'];
    $ProductName=  $_POST['productName'];
    $OfferPrice =  $_POST['offerprice'];
    $OfferDescription =  $_POST['offerDescription'];
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
    $sql = "UPDATE ProductOffers SET SpecialOfferPrice= ?,  OfferDescription= ? WHERE OfferID = ? ";
    $params = array($OfferPrice, $OfferDescription, $ProductofferID);
    $result = sqlsrv_query($conn, $sql, $params);
    if ($result !== false) {
        echo "Update successful!";
    } else {
        echo "Update failed: " . print_r(sqlsrv_errors(), true);
    }
    sqlsrv_close($conn);
}
?>