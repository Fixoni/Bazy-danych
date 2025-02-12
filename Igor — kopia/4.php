<?php

// $connect=@mysqli_connect('localhost','root','','kurs') or die('błąd połączenia bazy danych');
include('polacz.php');

$zapytanie="select from pracownicy;";
$wynik=mysqli_query($connect,$zapytanie);
    echo "<select name='wys'>";
    echo "<option>Nazwisko - Etat - Zatrudniony</option>";
    while($wiersz=mysqli_fetch_array($wynik)){
        echo "<option value=' $wiersz[1]'>
        $wiersz[1]. - . $wiersz[2]. - . $wiersz[4] </option>";
    }
    echo "</select>";

mysqli_close($connect);

?>