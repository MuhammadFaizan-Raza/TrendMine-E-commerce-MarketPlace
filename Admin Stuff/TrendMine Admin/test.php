<?php
$servername = "DESKTOP-DB6965D\SQLEXPRESS";
$database = "Trendmine_Project";
$uid = ""; 
$pass = "";
$connectionOptions = [
    "Database" => $database,
    "Uid" => $uid,
    "PWD" => $pass];
$con = sqlsrv_connect($servername, $connectionOptions) or die("Connection failed: " . print_r(sqlsrv_errors(), true));

?>