<?php
session_start();

// Check if user is logged in
if (!isset($_SESSION['username'])) {
    header("Location: login.html");
    exit();
}

$username = $_SESSION['username'];
$role = $_SESSION['role'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>University Food Order System</title>
  <link rel="stylesheet" href="home style.css" />
</head>
<body>
  <header>
    <h1>Welcome, <?php echo htmlspecialchars($username); ?> (<?php echo htmlspecialchars($role); ?>)</h1>
    <p>Select a cafe to start your order</p>
    <a href="logout.php" style="color:red; text-decoration:none;">Logout</a>
  </header>

  <main>
    <section class="cafes">
      <div class="cafe-card">
        <h2>MUNCHIES</h2>
        <p>Burgers, sandwiches, and more</p>
        <a href="munchies menu.html">Order Now</a>
      </div>

      <div class="cafe-card">
        <h2>BISTRO BITES</h2>
        <p>Pizza, pasta, and Italian cuisine</p>
        <a href="BISTRO MENU.html">Order Now</a>
      </div>

      <div class="cafe-card">
        <h2>GRILL AND CHILL</h2>
        <p>Burgers, fries, and grilled meals</p>
        <a href="grill n chill.html">Order Now</a>
      </div>

      <div class="cafe-card">
        <h2>EAT AND MEAT</h2>
        <p>Salads, smoothies and shakes</p>
        <a href="eat n meat menu.html">Order Now</a>
      </div>
    </section>
  </main>

  <footer>
    <p>&copy; 2025 University Food Order System. All rights reserved.</p>
  </footer>
</body>
</html>
