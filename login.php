<?php
session_start();

$host = "localhost";
$db = "food_app"; // change this
$user = "root";
$pass = "";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = $_GET['username'];
$password = $_GET['password'];
$role = $_GET['role'];

$stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ? AND role = ?");
$stmt->bind_param("ss", $username, $role);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $user = $result->fetch_assoc();
    if (password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $username;
        $_SESSION['role'] = $role;
        header("Location: home.html");
        exit();
    } else {
        echo "Incorrect password.";
    }
} else {
    echo "User not found or role mismatch.";
}

$conn->close();
?>
