
<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$serverName = "FAIZANRAZA\\SQLEXPRESS";
$connectionOptions = array(
    "Database" => "Trendmine_Project_93", 
    "Uid" => "",
    "PWD" => ""
);

$conn = sqlsrv_connect($serverName, $connectionOptions);

if ($conn === false) {
    die(print_r(sqlsrv_errors(), true));
}

function calculateDiscount($profit) {
    if ($profit < 100 && $profit>0) {
        return 0.5; 
    } elseif ($profit >= 100 && $profit < 250) {
        return 0.4; 
    } elseif ($profit >= 250 && $profit < 350) {
        return 0.3; 
    } elseif ($profit >= 350) {
        return 0.2; 
    } else {
        return 0;
    }
}

function createDiscountRequest($prod_id, $discount, $reason) {
    global $conn;
    $sql = "INSERT INTO [dbo].[discount_requests] ([prod_id], [discount], [reason], [statuses]) 
            VALUES (?, ?, ?, 'pending')";
    $params = array($prod_id, $discount, $reason);
    $stmt = sqlsrv_query($conn, $sql, $params);
    if ($stmt === false) {
        echo "Error creating discount request for prod_id $prod_id: " . print_r(sqlsrv_errors(), true) . "\n";
    } else {
        echo "Discount request created successfully for prod_id $prod_id. Discount: $discount\n";
        sqlsrv_free_stmt($stmt);
    }
}
function updateOffers() {
    global $conn;
///prod_Price is Price 
    $sql = "SELECT cp.Prod_Id, SUM(cp.quantity * pi.Prod_Price) AS total_sales
            FROM [dbo].[Cart_ProductJunctionParticular] cp
            INNER JOIN [dbo].[ProductInformation] pi ON cp.Prod_Id = pi.Prod_Id
            INNER JOIN [dbo].[OrderInfo] o ON cp.cart_id = o.cart_id
            WHERE MONTH(o.OrderDate) = MONTH(GETDATE() - 1)
            GROUP BY cp.Prod_Id";
//ppp is cost
    $stmt = sqlsrv_query($conn, $sql);

    if ($stmt === false) {
        echo "Error retrieving data for updating offers: " . print_r(sqlsrv_errors(), true) . "\n";
        return;
    }
///criteria total profit sales ka hai not piece sold
    while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
        $prod_id = $row['Prod_Id'];
        $total_sales = $row['total_sales'];
        if ($total_sales >= 10000) {
            echo "Product ID: $prod_id does not meet total sales criteria. Total Sales: $total_sales\n";
            continue;
        }
        
        $inventorySql = "SELECT Prod_Price, Quantity FROM [dbo].[ProductInformation] WHERE Prod_Id = ?";
        $inventoryStmt = sqlsrv_query($conn, $inventorySql, array($prod_id));

        if ($inventoryStmt === false) {
            echo "Error retrieving inventory data for prod_id $prod_id: " . print_r(sqlsrv_errors(), true) . "\n";
            continue;
        }
        $inventoryRow = sqlsrv_fetch_array($inventoryStmt, SQLSRV_FETCH_ASSOC);
        if ($inventoryRow) {
            $prodPrice = $inventoryRow['Prod_Price'];
            $quantity = $inventoryRow['Quantity'];
            if ($quantity <= 200) {
                echo "Product ID: $prod_id does not meet quantity criteria. Quantity: $quantity \n";
                continue;
            }
            $pricePerPiece = $prodPrice / $quantity; ////inventory wali cost hai yeh pricePerPiece
            $profit = $total_sales - ($quantity * $pricePerPiece);
            $discount = calculateDiscount($profit);
            echo "Product ID: $prod_id, Total Sales: $total_sales, Price Per Piece: $pricePerPiece, Profit: $profit, Discount: $discount\n";
            $reason = "Low sales, high stock";
            createDiscountRequest($prod_id, $discount, $reason);
        } else {
            echo "No inventory data found for prod_id $prod_id.\n";
        }
    }
    echo "Offers updated successfully.\n";
    sqlsrv_free_stmt($stmt);
}
updateOffers();
sqlsrv_close($conn);
?>
