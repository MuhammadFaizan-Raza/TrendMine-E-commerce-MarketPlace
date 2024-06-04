<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $adminID = $_POST['adminID'];
    $isActive = isset($_POST['isActive']) ? 1 : 0; 
    $adminRole = $_POST['adminRole'];
    $servername = "FAIZANRAZA\\SQLEXPRESS";
    $database = "Trendmine_Project_93";
    $uid = ""; 
    $pass = "";        
    $connection = [
        "Database" => $database,
        "Uid" => $uid,
        "PWD" => $pass
    ];
    $conn = sqlsrv_connect($servername, $connection) or die("Connection failed: " . print_r(sqlsrv_errors(), true));
    $sql = "UPDATE Administration SET IsActive = ?, adminRole = ? WHERE AdminID = ?";
    $params = array($isActive, $adminRole, $adminID);
    $result = sqlsrv_query($conn, $sql, $params);
    if ($result !== false) {
        echo "Update successful!";
    } else {
        echo "Update failed: " . print_r(sqlsrv_errors(), true);
    }
    sqlsrv_close($conn);
}
?>
