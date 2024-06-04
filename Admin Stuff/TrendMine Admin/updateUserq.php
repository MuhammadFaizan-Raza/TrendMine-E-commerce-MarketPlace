<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $UserID= $_POST['userID'];
    $FullName =  $_POST['fullName'];
    $UserPassword =  $_POST['userPassword'];
    $MobileOrEmail =  $_POST['mobileOrEmail'];
    $DOB =  $_POST['dob'];
    $Address =  $_POST['address'];
    $Gender =  $_POST['gender'];
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
    $sql = "UPDATE UserProfiles SET UserName= ?,  User_Password= ?, Mobile_Number = ?, birthDate= ?, userAddres= ?, Gender= ? WHERE UserID = ? ";
    $params = array($FullName, $UserPassword, $MobileOrEmail, $DOB, $Address, $Gender, $UserID,);
    $result = sqlsrv_query($conn, $sql, $params);
    if ($result !== false) {
        echo "Update successful!";
    } else {
        echo "Update failed: " . print_r(sqlsrv_errors(), true);
    }
    sqlsrv_close($conn);
}
?>