<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ELIMINAR TIPO CLIENTE</title>
</head>
<body>
    <h1>ELIMINAR TIPO CLIENTE</h1>
    <?php

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or die ("Problemas en la conexion");
    $buscar=$_POST['opc'];
    $valor01=$_POST['valor'];

    if($buscar=="cod")
    {
        $registro=mysqli_query($conexion,"select IDTIPO,DESCRIPCION,DESCUENTO from tipoclientes where IDTIPO=$valor01")or die ("Problemas en el select".mysqli_error($conexion));
         if($reg=mysqli_fetch_array($registro))
         {
             mysqli_query($conexion,"delete from tipoclientes where IDTIPO=$valor01")or die ("Problemas en el select".mysqli_error($conexion));
             echo "Se efectuo la eliminacion del tipo cliente<br>";
             echo "<br><br>";

      $registro=mysqli_query($conexion,"select IDTIPO,DESCRIPCION,DESCUENTO from tipoclientes")or die ("Problemas en el select".mysqli_error($conexion));
       echo "<table border='2' width='80%'><tr><th>ID TIPO</th><th>DESCRIPCION</th><th>DESCUENTO</th></tr><tr>";

       while($reg=mysqli_fetch_array($registro))
       {
           echo "<td>".$reg['IDTIPO']."</td>";
           echo "<td>".$reg['DESCRIPCION']."</td>";
           echo "<td>".$reg['DESCUENTO']."</td></tr>";
       }
      }
       else
       {
           echo "No existe tipo de cliente ingresado";
       }
    }
       mysqli_close($conexion);
       ?>

   
</body>
</html>