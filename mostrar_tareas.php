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

// Consulta a la base de datos
$sql = "SELECT * FROM tareas";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Procesar los resultados
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Título: " . $row["titulo"]. " - Descripción: " . $row["descripcion"]. "<br>";
    }
} else {
    echo "0 resultados";
}
$conn->close();
?>
