<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $inventoryID = $_POST['productInventoryID'];
    $Name = ($_POST['itemName']);
    $quantity = $_POST['quantity'];
    $suppliername = $_POST['supplierID'];
    $expiredate =  $_POST['expireDate'];
    $warehousename =  $_POST['warehouseName'];
    $priceperpiece =  $_POST['pricePerPiece'];
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
    $sql = "UPDATE Inventory SET InventoryName = ?, Quantity = ?, SupplierName = ?,ExpireDates = ?, PricePerPiece = ? WHERE InventoryID = ?";
    $params = array($Name, $quantity,$suppliername, $expiredate, $priceperpiece, $inventoryID);
    $result = sqlsrv_query($conn, $sql, $params);
    if ($result !== false) {
        echo "Update successful!";
    } else {
        echo "Update failed: " . print_r(sqlsrv_errors(), true);
    }
    sqlsrv_close($conn);
}
?>