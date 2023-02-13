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

    $n1=$_POST['a'];
    $n2=$_POST['b'];
    $p1=$_POST['c'];
    $p2=$_POST['d'];
    $td=$_POST['e'];
    $dc=$_POST['f'];
    $it=$_POST['g'];
    $em=$_POST['h'];
    $dr=$_POST['i'];
    $tf=$_POST['j'];
    $ce=$_POST['k'];
    $br=$_POST['l'];
    $ci=$_POST['m'];

    $conexion=mysqli_connect("localhost","root","","mueblesdecasa") or 
    die ("Problemas en la conexion");

    mysqli_query($conexion,"insert into tablaclientes(NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,TIPODEDOCUMENTO,DOCUMENTO,IDTIPO,EMAIL,DIRECCION,TELEFONOFIJO,CELULAR,BARRIO,CIUDAD) values
     ('$n1','$n2','$p1','$p2','$td','$dc','$it','$em','$dr','$tf','$ce','$br','$ci')") or die("Problemas en el select".mysqli_error($conexion));

    mysqli_close($conexion);

    echo"Cargo insertado con exito";
    echo "<table border='2' width='80%'><tr><th>PRIMER NOMBRE</th><th>SEGUNDO NOMBRE</th><th>PRIMER APELLIDO</th><th>SEGUNDO APELLIDO</th><th>TIPO DE DOCUMENTO</th><th>DOCUMENTO</th><th>ID  TIPO</th>
    <th>EMAIL</th><th>DIRECCION</th><th>TELEFONO FIJO</th><th>CELULAR</th><th>BARRIO</th><th>CIUDAD</th></tr>";
    echo "<table border='2' width='80%'><tr><th>$n1</th><th>$n2</th><th>$p1</th><th>$p2</th><th>$td</th><th>$dc</th><th>$it</th><th>'$em</th><th>$dr</th><th>$tf</th>
    <th>$ce</th><th>$br</th><th>$ci</th></tr>";
    
    
    ?>
</body>
</html>