<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $CategoryID= $_POST['categoryID'];
    $CategoryName =  $_POST['categoryName'];
    $TaxPoints =  $_POST['taxPoints'];
    $ReturnPolicy =  $_POST['returnPolicyInfo'];
    $WarrantyInfo =  $_POST['warrantyInfo'];
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
    $sql = "UPDATE ProductCategory SET Prod_Category= ?,  TaxPercentage= ?, ReturnPolicyInfo = ?, WarrantyInfo= ? WHERE CategoryID = ? ";
    $params = array($CategoryName,$TaxPoints, $ReturnPolicy, $WarrantyInfo, $CategoryID);
    $result = sqlsrv_query($conn, $sql, $params);
    if ($result !== false) {
        echo "Update successful!";
    } else {
        echo "Update failed: " . print_r(sqlsrv_errors(), true);
    }
    sqlsrv_close($conn);
}
?>