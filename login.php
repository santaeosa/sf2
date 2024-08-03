<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
include('db.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $query = "SELECT * FROM usuarios WHERE email='$email' AND password='$password'";
    $result = $conexion->query($query);

    if ($result->num_rows == 1) {
        $_SESSION['usuario'] = $email;
        header('Location: tareas.php');
    } else {
        echo 'Usuario o contraseña incorrectos';
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Login</h1>
        </header>
        <form action="login.php" method="post">
            <label for="email">Correo electrónico:</label>
            <input type="email" name="email" required>
            <label for="password">Contraseña:</label>
            <input type="password" name="password" required>
            <button type="submit">Login</button>
        </form>
        <a href="register.php">Ir a registro</a>
    </div>
</body>
</html>
