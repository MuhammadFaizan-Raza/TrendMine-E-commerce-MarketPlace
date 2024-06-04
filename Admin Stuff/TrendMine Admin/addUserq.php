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
$con = sqlsrv_connect($servername, $connectionOptions) or die("Connection failed: " . print_r(sqlsrv_errors(), true));

// Retrieve form data
$FullName = isset($_POST['fullName']) ? $_POST['fullName'] : '';
$UserPassword = isset($_POST['userPassword']) ? $_POST['userPassword'] : '';
$MobileOrEmail = isset($_POST['mobileOrEmail']) ? $_POST['mobileOrEmail'] : '';
$DOB = isset($_POST['dob']) ? $_POST['dob'] : '';
$Address = isset($_POST['address']) ? $_POST['address'] : '';
$Gender = isset($_POST['gender']) ? $_POST['gender'] : '';

// Check if all fields are filled
if (empty($FullName) || empty($UserPassword) || empty($MobileOrEmail) || empty($Gender)) {
    echo '<script>alert("Please fill in all required fields."); window.location.href = "Addcategory.html";</script>';
    exit;
}

// Add user to the database
$adminQuery = "INSERT INTO UserProfiles (Full_Name, User_Password, Mobile_Number, birthDate, userAddress, Gender) OUTPUT INSERTED.UserID VALUES (?, ?, ?, ?, ?, ?)";
$adminParams = array($FullName, $UserPassword, $MobileOrEmail, $DOB, $Address, $Gender, 1, 1, 1, 1);
$adminStmt = sqlsrv_query($con, $adminQuery, $adminParams);

// Check if the query was successful
if ($adminStmt) {
    echo '<script>alert("Registration successful"); window.location.href = "Addcategory.html";</script>';
} else {
    echo '<script>alert("Registration failed. Please try again."); window.location.href = "Addcategory.html";</script>';
}

sqlsrv_close($con);
?>
