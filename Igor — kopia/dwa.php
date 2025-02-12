<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <title>Zapytania lvl 2</title>
</head>
<body>
    <h2>zapytanie 2</h2>
    <?php
    /*wyświetla dane pracowników, w postaci tabeli posortowane rosnąco według nazwiska
    id_prac, nazwisko, etat, placa_pod*/
    $connect=@mysqli_connect('127.0.0.1','root','','kurs') or die('bład połączenia');
    $zapytanie1="select id_prac, nazwisko, etat, placa_pod from pracownicy order by nazwisko ASC";
    $wynik=mysqli_query($connect,$zapytanie1);
    echo "<table border=1>";
    echo "<tr>";
    echo "<th>id pracownika</th>";
    echo "<th>nazwisko</th>
            <th>etat</th>
            <th>placa podstawowa</th>
    </tr>";
    while($wiersz=mysqli_fetch_array($wynik)){
        echo "<tr>";
        echo "<td>".$wiersz['id_prac']."</td>";
        echo "<td>".$wiersz[1]."</td>";
        echo "<td>".$wiersz[2]."</td>";
        echo "<td>".$wiersz['placa_pod']."</td>";
        echo "</tr>";
    }
    echo "</table>";
    
    mysqli_close($connect);
    ?>

    <h2>zapytanie 3</h2>
    <?php
     /*wyświetla nazwisko, etat pracowników i nazwa oraz adres zespolu - 
    wykorzystać należy REALCJE!!! , w postaci listy numerowanej*/
    $connect=@mysqli_connect('127.0.0.1','root','','kurs') or die('bład połączenia');
    $zapytanie2="select pracownicy.nazwisko, pracownicy.etat, zespoly.nazwa, zespoly.adres 
    from pracownicy, zespoly where pracownicy.id_zesp=zespoly.id_zesp";
    $wynik=mysqli_query($connect,$zapytanie2);
    echo "<ol>";
    while($wiersz2=mysqli_fetch_array($wynik)){
        echo "<li> nazwisko: ".$wiersz2['nazwisko']."na etacie: ".$wiersz2['etat'].
        "w zespole: ".$wiersz2['nazwa']."po adresem: ".$wiersz2['adres']."</li>";
    }
    echo "</ol>";   
    mysqli_close($connect);
    ?>
    <h2>zapytanie 4</h2>
    <?php
    /*wyświetla nazwisko, etat pracowników i nazwa oraz adres zespolu dla etatu profesor - 
    wykorzystać należy REALCJE!!! , w postaci listy numerowanej*/
    $connect=@mysqli_connect('127.0.0.1','root','','kurs') or die('bład połączenia');
    $zapytanie2="select pracownicy.nazwisko, pracownicy.etat, zespoly.nazwa, zespoly.adres 
    from pracownicy, zespoly where pracownicy.etat='profesor'and pracownicy.id_zesp=zespoly.id_zesp";
    $wynik=mysqli_query($connect,$zapytanie2);
    echo "<ol>";
    while($wiersz3=mysqli_fetch_array($wynik)){
        echo "<li> nazwisko: ".$wiersz3['nazwisko']."na etacie: ".$wiersz3['etat'].
        "w zespole: ".$wiersz3['nazwa']."po adresem: ".$wiersz3['adres']."</li>";
    }
    echo "</ol>";   
    mysqli_close($connect);
    ?>
</body>
</html>