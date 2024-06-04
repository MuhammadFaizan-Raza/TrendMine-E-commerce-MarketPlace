<?php
session_start();
$servername = "FAIZANRAZA\\SQLEXPRESS";
$database = "Trendmine_Project_93";
$uid = ""; 
$pass = "";
$connectionOptions = [
    "Database" => $database,
    "Uid" => $uid,
    "PWD" => $pass];
$con = sqlsrv_connect($servername, $connectionOptions) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
$adminEmailOrPhone = trim($_POST['adminEmailOrPhone']);
$adminPassword = $_POST['adminPassword']; 
$adminRole = $_POST['adminRole'];
$userQuery = "SELECT userID FROM UserProfiles WHERE Email = ? AND User_Password = ?";
$userParams = array($adminEmailOrPhone, $adminPassword);
$userResult = sqlsrv_query($con, $userQuery, $userParams);
if (sqlsrv_has_rows($userResult)) {
    $row = sqlsrv_fetch_array($userResult, SQLSRV_FETCH_ASSOC);
    $userID = $row['userID'];
    $adminQuery = "INSERT INTO Administration(userID, adminRole, IsActive) VALUES (?, ?, ?)";
    $adminParams = array($userID, $adminRole, 1); 
    $adminStmt = sqlsrv_query($con, $adminQuery, $adminParams);
    echo '<script>alert("Registration hogai"); window.location.href = "Addcategory.html";</script>';
    exit;}
 else {
  echo '<script>alert("Registration nhi hoi wrong email or password"); window.location.href = "Addcategory.html";</script>';
  exit;
}
sqlsrv_close($con);
?>
