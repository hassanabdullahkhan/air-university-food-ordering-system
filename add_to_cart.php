<?php
session_start();
$food_id = $_GET['id'];
$quantity = 1;

if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

if (isset($_SESSION['cart'][$food_id])) {
    $_SESSION['cart'][$food_id] += $quantity;
} else {
    $_SESSION['cart'][$food_id] = $quantity;
}

header("Location: view_cart.php");
?>
