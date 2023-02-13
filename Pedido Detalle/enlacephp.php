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

    $a=$_POST['a'];
    $b=$_POST['b'];
    $c=$_POST['c'];
    $d=$_POST['d'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tablapedidodetalle(IDPEDIDO,IDPRODUCTO,CANTIDAD,SUBTOTAL) values ('$a','$b','$c','$d')") or 
    die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>ID PEDIDO</th><th>ID PRODUCTO</th><th>CANTIDAD</th><th>SUBTOTAL</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$a</th><th>$b</th><th>$c</th><th>$d</th></tr>";
    
    
    ?>
</body>
</html>