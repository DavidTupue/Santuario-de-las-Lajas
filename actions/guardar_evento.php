<?php
include 'conexion.php';

$titulo = $_POST['titulo'];
$descripcion = $_POST['descripcion'];
$fecha_evento = $_POST['fecha_evento'];
$imagen = $_POST['imagen'];

$sql = "INSERT INTO eventos (titulo, descripcion, fecha_evento, imagen)
        VALUES ('$titulo', '$descripcion', '$fecha_evento', '$imagen')";

if ($conn->query($sql) === TRUE) {
  echo "Evento guardado correctamente";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
