<?php
session_start();

if (isset($_GET['guest']) && $_GET['guest'] == 'true') {
    session_destroy(); 
}

if(isset($_SESSION['login'])){
    echo "Jesteś zalogowany jako ".$_SESSION['login'];
}
else{
    echo "gość";
}

$polacz = @mysqli_connect('localhost', 'root', '', 'sklepkuba') or die('Błąd połączenia');

if (isset($_POST['name']) && isset($_POST['description']) && isset($_POST['price']) && isset($_POST['category'])){
    $name=$_POST['name'];
    $description=$_POST['description'];
    $price=$_POST['price'];
    $category=$_POST['category'];
    $added_by=$_SESSION['login'];
    $insert="INSERT INTO `parts`(`name`, `description`, `price`, `category`, `added_by`) VALUES ('$name','$description','$price','$category','$added_by')";
    $ebeebe=mysqli_query($polacz,$insert);
    $part_id = mysqli_insert_id($polacz);
    header("Location: produkty.php");
    exit();
}
mysqli_close($polacz);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sklep z częściami komputerowymi</title>
</head>
<body>
    <form method="post" name="ff" action="" target="_self">
        <label>
            <h3>Dodaj nową część</h3>
            Nazwa:<br/>
            <input type="text" name="name" required> <br>
            Opis:<br/>
            <textarea name="description" required></textarea> <br>
            Cena:<br/>
            <input type="number" name="price" required> <br>
            Kategoria:<br/>
            <select name="category" required>
                <option value="CPU">CPU</option>
                <option value="GPU">GPU</option>
                <option value="RAM">RAM</option>
                <option value="Motherboard">Motherboard</option>
                <option value="Storage">Storage</option>
            </select> <br>
            <input type="submit" value="Dodaj"><br>
        </label>
    </form>

    <?php
    $polacz = @mysqli_connect('localhost', 'root', '', 'sklepkuba') or die('Błąd połączenia');
    $zap3 = 'SELECT * FROM parts';
    $tredsy3 = mysqli_query($polacz, $zap3);
    echo "<table border=2>";
    echo "<tr><th>Nazwa</th><th>Opis</th><th>Cena</th><th>Kategoria</th><th>Dodany przez</th><th>Usuń</th></tr>";
    while ($row = mysqli_fetch_array($tredsy3)) {
        echo "<tr>";
        echo "<td>" . $row[1] . "</td>";
        echo "<td>" . $row[2] . "</td>";
        echo "<td>" . $row[3] . " zł</td>";
        echo "<td>" . $row[4] . "</td>";
        echo "<td>" . $row[5] . "</td>";
        if ($_SESSION['login'] == "admin") {
            echo "<td><form method='post' action='usuwanie.php'>";
            echo "<input type='hidden' name='part_id' value='" . $row[0] . "'>";
            echo "<input type='submit' value='Usuń'>";
            echo "</form></td>";
        } else {
            echo "<td>nie mozna usunac produktu</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
    mysqli_close($polacz);
    ?>
</body>
</html>