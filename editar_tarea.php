<?php
session_start();
include('db.php');

if (!isset($_SESSION['usuario'])) {
    header('Location: login.php');
    exit();
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM tareas WHERE id=$id";
    $result = $conexion->query($query);
    $tarea = $result->fetch_assoc();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];
    $tarea = $_POST['tarea'];

    $query = "UPDATE tareas SET tarea='$tarea' WHERE id=$id";
    if ($conexion->query($query)) {
        echo 'Tarea actualizada correctamente';
    } else {
        echo 'Error al actualizar la tarea';
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar tarea</title>
</head>
<body>
    <form action="editar_tarea.php" method="post">
        <input type="hidden" name="id" value="<?php echo $tarea['id']; ?>">
        <label for="tarea">Tarea:</label>
        <input type="text" name="tarea" value="<?php echo $tarea['tarea']; ?>" required>
        <button type="submit">Actualizar</button>
    </form>
</body>
</html>
