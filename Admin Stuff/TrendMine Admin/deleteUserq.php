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
$ProductID= $_POST['userID'];
$con = sqlsrv_connect($servername, $connectionOptions) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
$sql = "DELETE UserProfiles FROM  WHERE UserID = ?";
$deleteParams = array($ProductID);
$deleteStmt = sqlsrv_query($con, $sql, $deleteParams);
if ($deleteStmt !== false && sqlsrv_rows_affected($deleteStmt)>0) {
        echo '<script>alert("Deletion successful"); window.location.href = "Addcategory.html";</script>';
    }
 else {
    echo '<script>alert("OrderID not found"); window.location.href = "Addcategory.html";</script>';
}
sqlsrv_close($con);
?>