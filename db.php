<?php
$host = 'localhost';
$db = 'todo_list';
$user = 'root';
$pass = '';

$conexion = new mysqli($host, $user, $pass, $db);

if ($conexion->connect_error) {
    die('Error de Conexión (' . $conexion->connect_errno . ') ' . $conexion->connect_error);
} else {
    echo 'Conexión exitosa';
}
?>
