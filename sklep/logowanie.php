<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZALOGUJ SIE</title>
</head>
<body>
<form action="logowanie.php" method="POST">
        <label for="login">Login:</label><br>
        <input type="text" id="login" name="login" required><br>
        <label for="haslo">Hasło:</label><br>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Zaloguj">
        <input type="reset" value="Reset">
        <br><input type="button" value="kontynuuj jako gość" onclick="location.href='produkty.php?guest=true'">
</br>
    </form>
        
        
        
</body>
</html>
<?php
if (isset($_POST['login']) && isset($_POST['password'])) {
    $login = $_POST['login'];
    $password = $_POST['password'];

    $_SESSION['login'] = $login;
    $polacz = @mysqli_connect('localhost', 'root', '', 'sklepkuba') or die('Błąd połączenia');
    $zap1 = "select * from users where login='$login' and pass='$password';";
    $wyn1 = mysqli_query($polacz, $zap1);
    if (mysqli_num_rows($wyn1) == 1) {
        echo "Zalogowano jako $login";
        header('location:produkty.php');
    } else {
        echo "bledne haslo";
    }

    mysqli_close($polacz);
}
?>