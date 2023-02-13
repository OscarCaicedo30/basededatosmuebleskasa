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

    $descripcion=$_POST['a'];
    $salario=$_POST['b'];
    $usuarios=$_POST['c'];
    $password=$_POST['d'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tablacargos(DESCRIPCION,SALARIO,USUARIO,PASSWORD) values ('$descripcion','$salario','$usuarios','$password')") or 
    die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>DESCRIPCION</th><th>SALARIO</th><th>USUARIO</th><th>PASWORD</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$descripcion</th><th>$salario</th><th>$usuarios</th><th>$password</th></tr>";
    
    
    ?>
</body>
</html>