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
    $tp=$_POST['i'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tablaproveedores(RAZONSOCIAL,TIPODOCUMENTO,NODOCUMENTO,DIRECCION,TELEFONO,NOMBRECONTACTO,TELEFONOCONTACTO,EMAILCONTACTO,TIPODEPRODUCTO) values
     ('$rs','$td','$nd','$dr','$tl','$nc','$tc','$ec','$tp')") or die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>RAZON SOCIAL</th><th>TIPO DOCUMENTO</th><th>N° DOCUMENTO</th><th>DIRECCION</th><th>TELEFONO</th><th>NOMBRE CONTACTO</th><th>TELEFONO CONTACTO</th><th>EMAIL CONTACTO</th><th>TIPO DE PRODUCTO</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$rs</th><th>$td</th><th>$nd</th><th>$dr</th><th>$tl</th><th>$nc</th><th>$tc</th><th>$ec</th><th>$tp</th></tr>";
    
    ?>
</body>
</html>