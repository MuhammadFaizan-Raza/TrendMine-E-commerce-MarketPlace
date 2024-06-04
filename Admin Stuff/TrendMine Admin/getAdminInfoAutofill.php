<?php
session_start();
$servername = "FAIZANRAZA\\SQLEXPRESS";
$database = "Trendmine_Project_93";
$uid = "";
$pass = "";

$adminID = $_GET['adminID'];

$connection = [
    "Database" => $database,
    "Uid" => $uid,
    "PWD" => $pass
];

$con = sqlsrv_connect($servername, $connection) or die("Connection failed: " . print_r(sqlsrv_errors(), true));

$sql = "SELECT adminRole, IsActive FROM Administration WHERE AdminID = ?";
$params = array($adminID);
$result = sqlsrv_query($con, $sql, $params);

$response = array();

if ($result !== false) {
    $row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC);
    $response['email'] = $row['adminRole'];
    $response['password'] = $row['IsActive'];
}

sqlsrv_close($con);

echo json_encode($response);
?>
