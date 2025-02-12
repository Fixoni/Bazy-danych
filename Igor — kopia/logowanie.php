<?php

$login=$_POST['logowanie'];
$pass=$_POST['haslo'];
if($login=="admin" && $pass="123"){
    header('location:baza.php');
}else{
    header('location:index.html'):
    header('location://www.ruski.ru');
}
?>