<?php
// Database configuration
$host = 'localhost';
$user = 'root'; // Your DB username
$password = ''; // Your DB password
$dbname = 'food_app';

// Connect to the database
$conn = new mysqli($host, $user, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get data from POST
$food_ids = $_POST['food_ids'] ?? [];
$total = $_POST['total'] ?? 0;

if (empty($food_ids)) {
    die("No items in order.");
}

// Insert the order
$stmt = $conn->prepare("INSERT INTO orders (total) VALUES (?)");
$stmt->bind_param("d", $total);
$stmt->execute();
$order_id = $stmt->insert_id;
$stmt->close();

// Prepare for order_items insert
$stmt = $conn->prepare("INSERT INTO order_items (order_id, food_id, food_name) VALUES (?, ?, ?)");

foreach ($food_ids as $food_id) {
    // Get food name from food_items table
    $food_id = (int)$food_id;
    $result = $conn->query("SELECT name FROM food_items WHERE id = $food_id");
    if ($row = $result->fetch_assoc()) {
        $food_name = $row['name'];
        $stmt->bind_param("iis", $order_id, $food_id, $food_name);
        $stmt->execute();
    }
}
$stmt->close();
$conn->close();

echo "<script>alert('Order placed successfully! and sent to office boy'); window.location.href='home.html';</script>";
?>
