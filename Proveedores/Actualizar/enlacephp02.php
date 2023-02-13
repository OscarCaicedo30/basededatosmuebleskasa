<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INSERTAR TIPO CLIENTE</title>
</head>
<body>
    <h1>INSERTAR TIPO CLIENTE</h1>
    <?php

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or die ("Problemas en la conexion");
    $a=$_POST['a'];
    $b=$_POST['b'];
    $c=$_POST['c'];
    $d=$_POST['d'];
    $e=$_POST['e'];
    $f=$_POST['f'];
    $g=$_POST['g'];
    $h=$_POST['h'];
    $i=$_POST['i'];


      mysqli_query($conexion,"update tablaproveedores set RAZONSOCIAL='$a',TIPODOCUMENTO='$b',NODOCUMENTO='$c',DIRECCION='$d',TELEFONO='$e',NOMBRECONTACTO='$f',TELEFONOCONTACTO='$g',EMAILCONTACTO='$h',TIPODEPRODUCTO='$i'");
      echo "Registro actualizado correctamente<br>";

       $registro=mysqli_query($conexion,"select IDPROVEEDORES,RAZONSOCIAL,TIPODOCUMENTO,NODOCUMENTO,DIRECCION,TELEFONO,NOMBRECONTACTO,TELEFONOCONTACTO,EMAILCONTACTO,TIPODEPRODUCTO from tablaproveedores") or die("Problemas en el select".mysqli_error($conexion));
       echo "<table border='2' width='80%'><tr><th>ID PROVEEDORES</th><th>RAZON SOCIAL</th><th>TIPO DOCUMENTO</th><th>NO DOCUMENTO</th><th>DIRECCION</th><th>TELEFONO</th><th>NOMBRE CONTACTO</th><th>TELEFONO CONTACTO/th><th>EMAIL CONTACTO</th><th>TIPO DE PRODUCTO</th></tr><tr>";
 
       while($reg=mysqli_fetch_array($registro))
       {
           echo "<td>".$reg['IDPROVEEDORES']."</td>";
           echo "<td>".$reg['RAZONSOCIAL']."</td>";
           echo "<td>".$reg['TIPODOCUMENTO']."</td>";
           echo "<td>".$reg['NODOCUMENTO']."</td>";
           echo "<td>".$reg['DIRECCION']."</td>";
           echo "<td>".$reg['TELEFONO']."</td>";
           echo "<td>".$reg['NOMBRECONTACTO']."</td>";
           echo "<td>".$reg['TELEFONOCONTACTO']."</td>";
           echo "<td>".$reg['EMAILCONTACTO']."</td>";
           echo "<td>".$reg['TIPODEPRODUCTO']."</td></tr>";
       }
       mysqli_close($conexion);
       ?>

   
</body>
</html>