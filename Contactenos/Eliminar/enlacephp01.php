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
    $descuento=$_POST['b'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tipoclientes(DESCRIPCION,DESCUENTO) values (' $descripcion','$descuento')") or 
    die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Tipo de cliente insertado con exito";
    
    
    ?>
</body>
</html>