<?php
session_start();
include 'db.php';

if (!isset($_SESSION['cart']) || empty($_SESSION['cart'])) {
    echo "Cart is empty.";
    exit;
}

$cart = $_SESSION['cart'];
$total = 0;

echo "<h2>Your Cart</h2><ul>";

foreach ($cart as $food_id => $qty) {
    $sql = "SELECT name, price FROM food_items WHERE id=$food_id";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();

    $subtotal = $row['price'] * $qty;
    $total += $subtotal;

    echo "<li>{$row['name']} x $qty = Rs. $subtotal</li>";
}

echo "</ul>";
echo "<p><strong>Total: Rs. $total</strong></p>";
echo "<form method='POST' action='place_order.php'><button type='submit'>Place Order</button></form>";
?>
