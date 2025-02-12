<?php
session_start();
$polacz = @mysqli_connect('localhost', 'root', '', 'sklepkuba') or die('Błąd połączenia');

if (isset($_POST['part_id'])) {
    $part_id = $_POST['part_id'];
    $delete = "DELETE FROM parts WHERE id = '$part_id'";
    $ebeebe = mysqli_query($polacz, $delete);
    header("Location: produkty.php");
    exit();
}
mysqli_close($polacz);
?>