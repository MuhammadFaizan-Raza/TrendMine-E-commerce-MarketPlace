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
$con = sqlsrv_connect($servername, $connectionOptions);
if (!$con) {
    die("Connection failed: " . print_r(sqlsrv_errors(), true));
}
$password = trim($_POST['password']);
$email = trim($_POST['email']);
$sql = "SELECT * FROM UserProfiles WHERE Email='$email' AND User_Password='$password'";
$result = sqlsrv_query($con, $sql);
if (sqlsrv_has_rows($result)) {
    header("Location: signupAccount.php");
} else {
    echo "No records found.";
}
sqlsrv_close($con);  
?>
<!--done!->