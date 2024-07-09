<?php
require 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $phone_number = $_POST['phone_number'];
    $course = $_POST['course'];

    $stmt = $conn->prepare("INSERT INTO users (username, password, first_name, last_name, phone_number, course, role) VALUES (:username, :password, :first_name, :last_name, :phone_number, :course, 'student')");
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':password', $password);
    $stmt->bindParam(':first_name', $first_name);
    $stmt->bindParam(':last_name', $last_name);
    $stmt->bindParam(':phone_number', $phone_number);
    $stmt->bindParam(':course', $course);
    $stmt->execute();

    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form action="register.php" method="POST">
            <label for="username">Username:</label>
            <input type="text" name="username" required>
            <br>
            <label for="password">Password:</label>
            <input type="password" name="password" required>
            <br>
            <label for="first_name">First Name:</label>
            <input type="text" name="first_name" required>
            <br>
            <label for="last_name">Last Name:</label>
            <input type="text" name="last_name" required>
            <br>
            <label for="phone_number">Phone Number:</label>
            <input type="text" name="phone_number" required>
            <br>
            <label for="course">Course:</label>
            <input type="text" name="course" required>
            <br>
            <button type="submit">Register</button>
        </form>
        <a href="login.php">Login</a>
    </div>
</body>
</html>