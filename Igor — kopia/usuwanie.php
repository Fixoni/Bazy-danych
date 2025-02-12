<?php
$nazwisko=$_POST['naz'];
$stanowisko=$_POST['sta'];
echo $nazwisko." ".$stanowisko;

// $connect=@mysqli_connect('localhost','root','','kurs') or die('błąd połączenia bazy danych');
include('polacz.php');

$zapytanie="delete from pracownicy where nazwisko='$nazwisko' && etat='$stanowisko';";
$wynik=mysqli_query($connect,$zapytanie);
    if($wynik==true){
        echo " Usunięto pracownika ".$nazwisko." z bazy pracowników. Nie dziękujemy za współpracę.";
    }else{
        echo" Nie usunięto pracownika ".$nazwisko." z bazy pracowników."; 
    }
mysqli_close($connect);
?>