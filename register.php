<?php
include('db.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $query = "INSERT INTO usuarios (email, password) VALUES ('$email', '$password')";
    if ($conexion->query($query)) {
        echo 'Usuario registrado correctamente';
    } else {
        echo 'Error al registrar el usuario';
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
</head>
<body>
    <form action="register.php" method="post">
        <label for="email">Correo electrónico:</label>
        <input type="email" name="email" required>
        <label for="password">Contraseña:</label>
        <input type="password" name="password" required>
        <button type="submit">Registrar</button>
    </form>
    <a href="login.php">Ir a login</a>
</body>
</html>
