<?php
session_start();
include('db.php');

if (!isset($_SESSION['usuario'])) {
    header('Location: login.php');
    exit();
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "DELETE FROM tareas WHERE id=$id";
    if ($conexion->query($query)) {
        echo 'Tarea borrada correctamente';
    } else {
        echo 'Error al borrar la tarea';
    }
    header('Location: tareas.php');
}
?>
