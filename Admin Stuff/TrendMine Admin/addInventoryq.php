<?php
session_start();
$servername = "DESKTOP-DB6965D\SQLEXPRESS";
$database = "Trendmine_Project";
$uid = ""; 
$pass = "";
$connectionOptions = [
    "Database" => $database,
    "Uid" => $uid,
    "PWD" => $pass];
    $con = sqlsrv_connect($servername, $connectionOptions) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
    $inventoryName = $_POST['itemName'];
        $inventoryQuantity = $_POST['quantity'];
        $supplierID = $_POST['supplierID'];
        $expireDate = $_POST['expireDate'];
        $warehouseName = $_POST['warehouseName'];
        $pricePerPiece = $_POST['pricePerPiece'];
        $adminQuery = "INSERT INTO Inventory (InventoryName, Quantity, SupplierName, ExpireDates, PricePerPiece) OUTPUT INSERTED.InventoryID VALUES (?, ?, ?, ?, ?)";
        $adminParams = array($inventoryName, $inventoryQuantity, $supplierID, $expireDate, $pricePerPiece);
        $adminStmt = sqlsrv_query($con, $adminQuery, $adminParams);
        if ($adminStmt) {
            echo '<script>alert("Registration hogai"); window.location.href = "Addcategory.html";</script>';
        } else {
            echo '<script>alert("Registration nhi hoi wrong email or password"); window.location.href = "Addcategory.html";</script>';
        }
    sqlsrv_close($con);
    ?>