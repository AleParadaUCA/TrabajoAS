<?php
$host = "mysql";
$db = "drupal";
$user = "drupal";
$pass = "drupal";

// echo "<h2>Información del Servidor PHP</h2>";
// phpinfo();

echo "<h2>Verificando conexión con MySQL...</h2>";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<p style='color: green;'>✅ Conexión exitosa con MySQL</p>";

    $result = $pdo->query("SELECT NOW() as now");
    $row = $result->fetch(PDO::FETCH_ASSOC);
    echo "<p>🕒 Fecha y hora del servidor MySQL: " . $row['now'] . "</p>";

} catch (PDOException $e) {
    echo "<p style='color: red;'>❌ Error de conexión: " . $e->getMessage() . "</p>";
}
?>