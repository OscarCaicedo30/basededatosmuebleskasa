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
    $e=$_POST['e'];
    $f=$_POST['f'];
    $g=$_POST['g'];
    $h=$_POST['h'];
    $i=$_POST['i'];
    $j=$_POST['j'];
    $k=$_POST['k'];
    $l=$_POST['l'];
    $m=$_POST['m'];
    $n=$_POST['n'];
    $o=$_POST['o'];
    $p=$_POST['p'];
    $q=$_POST['q'];
    $r=$_POST['r'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tablaempleados(NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,TIPODOCUMENTO,DOCUMENTO,IDCARGO,DIRECCION,TELEFONOFIJO,CELULAR,EMAIL,ULTIMOESTUDIOSREALIZADOS,INSTITUCION,PERIODO,ULTIMAREFERENCIALABORAL,EMPRESA,JEFEINMEDIATO,TELCONTACTO) values
     ('$a','$b','$c','$d','$e','$f','$g','$h','$i','$j','$k','$l','$m','$n','$o','$p','$q','$r')") or die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>PRIMER NOMBRE </th><th>SEGUNDO NOMBRE</th><th>PRIMER APELLIDO</th><th>SEGUNDO APELLIDO</th><th>TIPO DOCUMENTO</th><th>DOCUMENTO</th><th>ID CARGO</th><th>DIRECCION</th><th>TELEFONO FIJO</th><th>CELULA</th><th>EMAIL</th><th>ULTIMOS ESTUDIOS REALIZADOS</th><th>INSTITUCION</th><th>PERIODO</th>
    <th>ULTIMA REFERENCIA LABORAL</th><th>EMPRESA</th><th>JEFE INMEDIATO</th><th>TELEFONO CONTACTO</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$a</th><th>$b</th><th>$c</th><th>$d</th><th>$e</th><th>$f</th><th>$g</th><th>$h</th><th>$i</th><th>$j</th><th>$k</th><th>$l</th><th>$m</th>
    <th>$n</th><th>$o</th><th>$p</th><th>$q</th><th>$r</th></tr>";
    
    
    
    ?>
</body>
</html>