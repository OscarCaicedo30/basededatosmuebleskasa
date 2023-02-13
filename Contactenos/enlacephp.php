<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Operaciones</title>
</head>
<body>
    <?php

    $nom=$_POST['a'];
    $apell=$_POST['b'];
    $tel=$_POST['c'];
    $em=$_POST['d'];
    $ms=$_POST['e'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into contactenos(NOMBRE,APELLIDO,TELEFONO,EMAIL,MENSAJE) values ('$nom','$apell','$tel','$em','$ms')") or 
    die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>NOMBRE</th><th>APELLIDO</th><th>TELEFONO</th><th>EMAIL</th><th>MENSAJE</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$nom</th><th>$apell</th><th>$tel</th><th>$em</th><th>$ms</th></tr>";
    
    
    ?>
</body>
</html>