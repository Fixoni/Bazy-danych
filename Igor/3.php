<?php
$nazwisko=$_POST['naz'];
echo $nazwisko;

    /*wyświetla nazwisko, etat pracowników i nazwa oraz adres zespolu dla nazwiska wczytanego 
    z pola formularza - wykorzystać należy REALCJE!!! , w postaci listy numerowanej*/
    $connect=@mysqli_connect('127.0.0.1','root','','kurs') or die('bład połączenia');
    $zapytanie3="select pracownicy.nazwisko, pracownicy.etat, zespoly.nazwa, zespoly.adres 
    from pracownicy, zespoly where pracownicy.nazwisko='$nazwisko'and pracownicy.id_zesp=zespoly.id_zesp";
    $wynik=mysqli_query($connect,$zapytanie3);
    echo "<ol>";
    while($wiersz3=mysqli_fetch_array($wynik)){
        echo "<li> nazwisko: ".$wiersz3['nazwisko']."na etacie: ".$wiersz3['etat'].
        "w zespole: ".$wiersz3['nazwa']."po adresem: ".$wiersz3['adres']."</li>";
    }
    echo "</ol>";   
    mysqli_close($connect);

?>