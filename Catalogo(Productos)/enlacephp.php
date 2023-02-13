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

    $tp=$_POST['a'];
    $ds=$_POST['b'];
    $cv=$_POST['c'];
    $ex=$_POST['d'];
    $ip=$_POST['e'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tablacatalogo_productos(IDPROVEEDOR,TIPODEPRODUCTO,DESCRIPCION,COSTOVENTA,EXISTENCIAS) values ('$tp','$ds','$cv','$ex','$ip')") or 
    die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>ID PROVEEDOR</th><th>TIPO DE PRODUCTO</th><th>DESCRIPCION</th><th>COSTO VENTA</th><th>EXISTENCIAS</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$tp</th><th>$ds</th><th>$cv</th><th>$ex</th><th>$ip</th></tr>";
    
    
    ?>
</body>
</html>