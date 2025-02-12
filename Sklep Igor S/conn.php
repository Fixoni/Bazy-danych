<?php

$host = 'localhost';
$db_user = 'admin';
$db_password = '123'; 
$db_name = 'sklepigor';

$conn = mysqli_connect($host, $db_user, $db_password, $db_name);

if (!$conn) {
    die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
}
?>
