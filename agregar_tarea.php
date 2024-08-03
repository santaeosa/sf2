<?php
session_start();
include('db.php');

if (!isset($_SESSION['usuario'])) {
    header('Location: login.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $usuario = $_SESSION['usuario'];
    $tarea = $_POST['tarea'];

    $query = "INSERT INTO tareas (usuario, tarea) VALUES ('$usuario', '$tarea')";
    if ($conexion->query($query)) {
        echo 'Tarea creada correctamente';
    } else {
        echo 'Error al crear la tarea';
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar tarea</title>
</head>
<body>
    <form action="agregar_tarea.php" method="post">
        <label for="tarea">Tarea:</label>
        <input type="text" name="tarea" required>
        <button type="submit">Agregar</button>
    </form>
</body>
</html>
