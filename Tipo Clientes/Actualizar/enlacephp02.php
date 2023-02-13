<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ACTUALIZAR TIPO CLIENTE</title>
</head>
<body>
    <h1>ACTUALIZAR TIPO CLIENTE</h1>
    <?php

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or die ("Problemas en la conexion");
    $a=$_POST['descripcion01'];
    $b=$_POST['descuento01'];
    $c=$_POST['descripcion00'];


      mysqli_query($conexion,"update tipoclientes set DESCRIPCION='$a',DESCUENTO='$b' where  DESCRIPCION='$c'");
      echo "Registro actualizado correctamente<br>";

       $registro=mysqli_query($conexion,"select IDTIPO,DESCRIPCION,DESCUENTO from tipoclientes") or die("Problemas en el select".mysqli_error($conexion));
       echo "<table border='2' width='80%'><tr><th>IDTIPO</th><th>DESCRIPCION</th><th>DESCUENTO</th></tr><tr>";

       while($reg=mysqli_fetch_array($registro))
       {
           echo "<td>".$reg['IDTIPO']."</td>";
           echo "<td>".$reg['DESCRIPCION']."</td>";
           echo "<td>".$reg['DESCUENTO']."</td></tr>";
       }
       mysqli_close($conexion);
       ?>

   
</body>
</html>