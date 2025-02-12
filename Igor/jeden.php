<?php

?>
<!DOCTYPE>
<html lang="pl">
<head>
        <meta charset="UTF-8">
        <title>Pierwsze starcie z PHP i MySQL</title>
</head>
<body>
        <?php
        //połączenie z bazą danych 
        $polaczenie=mysqli_connect('localhost','root','','kurs') or die("brak połączenia");
        //tworzenie zapyatania
        $zapytanie1="select * from pracownicy";
        $zapytanie2="select NAZWISKO, ETAT, ZATRUDNIONY from pracownicy";
        //użycie zapytania
        $wynik=mysqli_query($polaczenie,$zapytanie1); 
        //wypisanie danych z tablicy
        while($wiersz=mysqli_fetch_assoc($wynik)){
            echo $wiersz["NAZWISKO"];
            echo " ";
            echo $wiersz["ETAT"];
            echo "  ";
            echo $wiersz["ZATRUDNIONY"];
            echo "<br/>"; 
        }
        echo "zapytanie nr 2<br/>";
        $zapytanie2="select NAZWISKO, ETAT, ZATRUDNIONY from pracownicy";
        $wynik2=mysqli_query($polaczenie,$zapytanie2);
        $ilePracownikow=mysqli_num_rows($wynik2);
        echo "<br/>W mojej firmie Verdna jest ".$ilePracownikow."pracownikow <br/>";
        echo "<ol>";
                while ($wiersz2=mysqli_fetch_array($wynik2)){
                echo"<li>";
                        echo $wiersz2['NAZWISKO'];
                        echo " ".$wiersz2[1];
                        echo " ".$wiersz2[2];
                echo"</li>";
                }
        echo "</ol>";
        //zamknięcie połczenia z bazą danych
        mysqli_close($polaczenie); 
        ?>
        <p>Hello world!!</p>
        <?php

        ?>
</body>
</html>