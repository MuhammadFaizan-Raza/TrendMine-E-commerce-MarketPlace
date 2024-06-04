<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $OrderID= $_POST['orderID'];
    $PaymentID =  $_POST['paymentID'];
    $UserID =  $_POST['userID'];
    $CartID =  $_POST['cartID'];
    $discountApplied =  $_POST['discountapplied'];
    $OrderStatus =  $_POST['orderStatus'];
    $FinalPrice =  $_POST['finalprice'];
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
    $sql = "UPDATE OrderInfo SET DiscountApplied = ?,  FinalPrice= ?, OrderStatus = ? WHERE OrderID = ?, PaymentID = ?, cart_id = ? ";
    $params = array($discountApplied, $FinalPrice, $OrderStatus, $OrderID, $PaymentID, $CartID);
    $result = sqlsrv_query($conn, $sql, $params);
    if ($result !== false) {
        echo "Update successful!";
    } else {
        echo "Update failed: " . print_r(sqlsrv_errors(), true);
    }
    sqlsrv_close($conn);
}
?>