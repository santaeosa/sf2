<?php
session_start();
include('db.php');

if (!isset($_SESSION['usuario'])) {
    header('Location: login.php');
    exit();
}

$usuario = $_SESSION['usuario'];
$query = "SELECT * FROM tareas WHERE usuario='$usuario'";
$result = $conexion->query($query);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de tareas</title>
</head>
<body>
    <h1>Listado de tareas de <?php echo $usuario; ?></h1>
    <table>
        <tr>
            <th>Id</th>
            <th>Tarea</th>
            <th>Acción</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['tarea']; ?></td>
                <td>
                    <a href="editar_tarea.php?id=<?php echo $row['id']; ?>">editar</a>
                    <a href="borrar_tarea.php?id=<?php echo $row['id']; ?>">borrar</a>
                </td>
            </tr>
        <?php } ?>
    </table>
    <a href="agregar_tarea.php">Nueva tarea</a>
    <a href="logout.php">Salir</a>
</body>
</html>
