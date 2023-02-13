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
    $tipo=$_POST['opc'];
    $buscar=$_POST['valor'];
    if($tipo=="cod")
    {
      $registro=mysqli_query($conexion,"select DESCRIPCION,DESCUENTO from tipoclientes where IDTIPO=$buscar") or  die("Problemas en el select".mysqli_error($conexion));

       if($reg=mysqli_fetch_array($registro))
       {
           ?>

           <form method="post" action="enlacephp02.php">
              <table width="80%"><tr>
               <tr><th>DESCRIPCION</th><td><input type="text" name="descripcion01" value="<?php echo $reg['DESCRIPCION'];?>"></td></tr>
               <tr><th>DESCUENTO</th><td><input type="text" name="descuento01" value="<?php echo $reg['DESCUENTO'];?>"></td></tr>
               <tr><th><input type="hidden" name="descripcion00" value="<?php echo $reg['DESCRIPCION']?>"></th></tr>
               <tr><th colspan="2"><input type="submit" value="ACTUALIZAR"></th></tr>
              </table>
           <?php
       }
       else
       {
           echo "Registro no existe";
       }
       }
       else
       {
           if($tipo="descrip")
             {
                 $registro=mysqli_query($conexion,"select DESCRIPCION,DESCUENTO from tipoclientes where DESCRIPCION='$buscar'") or die ("Problemas en select".mysqli_error($conexion));
                 if($reg=mysqli_fetch_array($registro))
                 {
                  ?>
                    <form method="post" action="enlacephp02.php">
                    <table width="80%"><tr>
                    <tr><th>DESCRIPCION</th><td><input type="text" name="descripcion01" value="<?php echo $reg['DESCRIPCION'];?>"></td></tr>
                    <tr><th>DESCUENTO</th><td><input type="text" name="descuento01" value="<?php echo $reg['DESCUENTO'];?>"></td></tr>
                    <tr><th><input type="hidden" name="descripcion00" value="<?php echo $reg['DESCRIPCION']?>"></th></tr>
                    <tr><th colspan="2"><input type="submit" value="ACTUALIZAR"></th></tr>
                   </table>
                 <?php
                 }
                 else
                 {
                   echo "Registro no existe";
                 }
                }
               }
               mysqli_close($conexion);
    ?>
</body>
</html>