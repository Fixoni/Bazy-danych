<?php
session_start();
include 'conn.php';

if (isset($_POST['submit'])) {
    $login = mysqli_real_escape_string($conn, $_POST['login']);
    $password = $_POST['password'];

    $query = "SELECT * FROM users WHERE name = '$login'";
    $result = mysqli_query($conn, $query);

    if ($result && mysqli_num_rows($result) == 1) {
        $user = mysqli_fetch_assoc($result);
        
        if ($password === $user['password']) {
            $_SESSION['login'] = $login;
            header("Location: main.php");
            exit();
        } else {
            echo "Błędne hasło!";
        }
    } else {
        echo "Nie znaleziono użytkownika!";
    }
}
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="logowanie">
        <form action="" method="POST">
            <label for="login">Login:</label><br>
            <input type="text" id="login" name="login" required><br>
            <label for="password">Hasło:</label><br>
            <input type="password" id="password" name="password" required><br>
            <input type="submit" name="submit" value="Zaloguj">
            <input type="reset" value="Reset">
            <br><input type="button" value="Kontynuuj jako gość" onclick="location.href='main.php'"><br>
        </form>
    </div>
</body>
</html>
