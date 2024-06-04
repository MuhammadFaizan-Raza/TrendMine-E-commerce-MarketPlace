<?php
session_start();
$servername = "FAIZANRAZA\\SQLEXPRESS";
$database = "Trendmine_Project_93";
$uid = ""; 
$pass = "";
$connectionOptions = [
    "Database" => $database,
    "Uid" => $uid,
    "PWD" => $pass
];
$adminID = $_POST['adminID'];
$con = sqlsrv_connect($servername, $connectionOptions) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
$sql = "DELETE FROM Administration WHERE AdminID = ?";
$deleteParams = array($adminID);
$deleteStmt = sqlsrv_query($con, $sql, $deleteParams);
if ($deleteStmt !== false && sqlsrv_rows_affected($deleteStmt)>0) {
        echo '<script>alert("Deletion successful"); window.location.href = "Addcategory.html";</script>';
    }
 else {
    echo '<script>alert("AdminID not found"); window.location.href = "Addcategory.html";</script>';
}
sqlsrv_close($con);
?>



