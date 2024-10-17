<?php
// Datos de conexión
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "todo_list";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Capturar datos del formulario
$titulo = $_POST['titulo'];
$descripcion = $_POST['descripcion'];

// Consulta para insertar datos en la tabla
$sql = "INSERT INTO tareas (titulo, descripcion) VALUES ('$titulo', '$descripcion')";

if ($conn->query($sql) === TRUE) {
    echo "Nueva tarea agregada exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
