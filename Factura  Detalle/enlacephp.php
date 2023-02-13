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

    $rs=$_POST['a'];
    $td=$_POST['b'];
    $nd=$_POST['c'];
    $dr=$_POST['d'];
    $tl=$_POST['e'];
    $nc=$_POST['f'];
    $tc=$_POST['g'];
    $ec=$_POST['h'];
    

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tablafacturadetalle(IDFACTURA,IDPRODUCTO,FORMADEPAGO,CANTIDAD,SUBTOTAL,IVA,DESCUENTO,NETO) values
     ('$rs','$td','$nd','$dr','$tl','$nc','$tc','$ec')") or die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>ID FACTURA</th><th>ID PRODUCTO</th><th>FORMA DE PAGO</th><th>CANTIDAD</th><th>SUBTOTAL</th><th>IVA</th><th>DESCUENTO</th><th>NETO</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$rs</th><th>$td</th><th>$nd</th><th>$dr</th><th>$tl</th><th>$nc</th><th>$tc</th><th>$ec</th></tr>";
    
     
    ?>
</body>
</html>