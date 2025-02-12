<a href="baza.php"></a>
<?php
$nazwisko=$_POST['naz'];
$stanowisko=$_POST['sta'];
$data=$_POST['dat'];
//echo $nazwisko." ".$stanowisko." ".$data;

// $connect=@mysqli_connect('localhost','root','','kurs') or die('błąd połączenia bazy danych');
include('polacz.php');

$zapytanie="insert into pracownicy(nazwisko,etat,zatrudniony) values('$nazwisko','$stanowisko','$data');";
$wynik=mysqli_query($connect,$zapytanie);
    if($wynik==true){
        echo " Dodano pracownika ".$nazwisko."do bazy pracowników. Witaj w naszej firmie!";
        header('location:baza.php');
    }else{
        echo" Nie dodano pracownika ".$nazwisko." do bazy pracowników. Nie chcemy cię w naszej firmie!! hihihiha"; 
    }
mysqli_close($connect);
?>