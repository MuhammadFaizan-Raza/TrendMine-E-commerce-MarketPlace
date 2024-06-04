
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "TrendMine_Project";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
function getPersonalizedProducts($user_id) {
    global $conn;
    $userInteractionsSql = "SELECT product_id, COUNT(*) as interaction_count
                            FROM user_interactions
                            WHERE user_id = $user_id
                            GROUP BY product_id
                            ORDER BY interaction_count DESC
                            LIMIT 5";
    $userInteractionsResult = $conn->query($userInteractionsSql);

    $recommendedProducts = [];
    while ($row = $userInteractionsResult->fetch_assoc()) {
        $product_id = $row['product_id'];
        $recommendedProducts[] = $product_id;
    }
    $purchaseHistorySql = "SELECT product_id
                           FROM purchase_history
                           WHERE user_id = $user_id
                           ORDER BY purchase_date DESC
                           LIMIT 5";
    $purchaseHistoryResult = $conn->query($purchaseHistorySql);
    while ($row = $purchaseHistoryResult->fetch_assoc()) {
        $product_id = $row['product_id'];
        $recommendedProducts[] = $product_id;}
    $recommendedProducts = array_unique($recommendedProducts);
    $productDetails = [];
    foreach ($recommendedProducts as $product_id) {
        $productSql = "SELECT * FROM products WHERE product_id = $product_id";
        $productResult = $conn->query($productSql);
        if ($productResult->num_rows > 0) {
            $productDetails[] = $productResult->fetch_assoc();}
    }
    return $productDetails;}
$user_id = 1;
$personalizedProducts = getPersonalizedProducts($user_id);
foreach ($personalizedProducts as $product) {
    echo "Product ID: " . $product['product_id'] . "<br>";
    echo "Product Name: " . $product['product_name'] . "<br>";
    echo "Price: $" . $product['price'] . "<br><br>";
}
$conn->close();
?>









