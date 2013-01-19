<!DOCTYPE html>
<html>
<head>
<meta  charset="utf-8">
<title>Ingenieria de Software Educativo</title>
<link href="estilos.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php
foreach ( $_GET as $log => $login){
	echo "$log: $login";
	}
?>
<table width="100" height="380" border="0" align="center">
  <tr>
    <td height="35"><a href="historia.html" target="marcoderecho">INTRODUCCION</a>
</td>
  </tr>
  <tr>
    <td  height="35"><a href="comados.html" target="marcoderecho">COMANDOS</a></td>
  </tr>
  <tr>
    <td  height="35"><a href="consultas.html" target="marcoderecho">CONSULTAS</a></td>
  </tr>
   <tr>
    <td  height="35"><a href="descargas.html" target="marcoderecho">DESCARGAS</a></td>
  </tr>
  <tr>
    <td  height="35"><a href="video.html" target="marcoderecho">VIDEO</a></td>
  </tr>
  <tr>
    <td  height="35"><a href="examen.php?$login" target="_parent">EVALUACION</a></td>
  </tr>
   <tr>
    <td  height="35"> <a href="acerca.html" target="marcoderecho">ACERCA DE </a></td>
  </tr>
   <tr>
    <td  height="35"> <a href="salir.php" target="_parent">SALIR </a></td>
  </tr>
</table>

</body>
</html>
