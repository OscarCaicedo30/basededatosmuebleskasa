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
      $registro=mysqli_query($conexion,"select RAZONSOCIAL,TIPODOCUMENTO,NODOCUMENTO,DIRECCION,TELEFONO,NOMBRECONTACTO,TELEFONOCONTACTO,EMAILCONTACTO,TIPODEPRODUCTO from tablaproveedores where 	IDPROVEEDORES=$buscar") or  die("Problemas en el select".mysqli_error($conexion));

       if($reg=mysqli_fetch_array($registro))
       {
           ?>

           <form method="post" action="enlacephp02.php">
              <table width="80%"><tr>
              <tr><th>RAZON SOCIAL</th><td><input type="text" name="a" value="<?php echo $reg['RAZONSOCIAL'];?>"></td></tr>
               <tr><th>TIPO DE DOCUMENTO</th><td><input type="text" name="b" value="<?php echo $reg['TIPODOCUMENTO'];?>"></td></tr>
               <tr><th>No DOCUMENTO</th><td><input type="text" name="c" value="<?php echo $reg['NODOCUMENTO'];?>"></td></tr>
               <tr><th>DIRECCION</th><td><input type="text" name="d" value="<?php echo $reg['DIRECCION'];?>"></td></tr>
               <tr><th>TELEFONO</th><td><input type="text" name="e" value="<?php echo $reg['TELEFONO'];?>"></td></tr>
               <tr><th>NOMBRE CONTACTO</th><td><input type="text" name="f" value="<?php echo $reg['NOMBRECONTACTO'];?>"></td></tr>
               <tr><th>TELEFONO CONTACTO</th><td><input type="text" name="g" value="<?php echo $reg['TELEFONOCONTACTO'];?>"></td></tr>
               <tr><th>EMAIL CONTACTO/th><td><input type="text" name="h" value="<?php echo $reg['EMAILCONTACTO'];?>"></td></tr>
               <tr><th>TIPO DE PRODUCTO</th><td><input type="text" name="i" value="<?php echo $reg['TIPODEPRODUCTO'];?>"></td></tr>
               <tr><th><input type="hidden" name="descripcion00" value="<?php echo $reg['RAZONSOCIAL']?>"></th></tr>
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
           if($tipo="rz")
             {
                 $registro=mysqli_query($conexion,"select RAZONSOCIAL,TIPODOCUMENTO,NODOCUMENTO,DIRECCION,TELEFONO,NOMBRECONTACTO,TELEFONOCONTACTO,EMAILCONTACTO,TIPODEPRODUCTO from tipoclientes where DESCRIPCION='$buscar'") or die ("Problemas en select".mysqli_error($conexion));
                 if($reg=mysqli_fetch_array($registro))
                 {
                  ?>
                    <form method="post" action="enlacephp02.php">
                    <table width="80%"><tr>
                    <tr><th>RAZON SOCIAL</th><td><input type="text" name="a" value="<?php echo $reg['RAZONSOCIAL'];?>"></td></tr>
               <tr><th>TIPO DE DOCUMENTO</th><td><input type="text" name="b" value="<?php echo $reg['TIPODOCUMENTO'];?>"></td></tr>
               <tr><th>No DOCUMENTO</th><td><input type="text" name="c" value="<?php echo $reg['NODOCUMENTO'];?>"></td></tr>
               <tr><th>DIRECCION</th><td><input type="text" name="d" value="<?php echo $reg['DIRECCION'];?>"></td></tr>
               <tr><th>TELEFONO</th><td><input type="text" name="e" value="<?php echo $reg['TELEFONO'];?>"></td></tr>
               <tr><th>NOMBRE CONTACTO</th><td><input type="text" name="f" value="<?php echo $reg['NOMBRECONTACTO'];?>"></td></tr>
               <tr><th>TELEFONO CONTACTO</th><td><input type="text" name="g" value="<?php echo $reg['TELEFONOCONTACTO'];?>"></td></tr>
               <tr><th>EMAIL CONTACTO/th><td><input type="text" name="h" value="<?php echo $reg['EMAILCONTACTO'];?>"></td></tr>
               <tr><th>TIPO DE PRODUCTO</th><td><input type="text" name="i" value="<?php echo $reg['TIPODEPRODUCTO'];?>"></td></tr>
                    <tr><th><input type="hidden" name="descripcion00" value="<?php echo $reg['RAZONSOCIAL']?>"></th></tr>
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