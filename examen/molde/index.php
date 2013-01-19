<!DOCTYPE html>
<head>
<meta  charset="utf-8">
<title>Frames</title>
</head>

<frameset rows="150,*,51" cols="*" framespacing="3" frameborder="yes" border="5" bordercolor="#000000">

<frame src="cabecera.html" name="marcosuperior" frameborder="yes" scrolling="NO" noresize>


<frameset cols="150,*" framespacing="3" frameborder="yes" border="5" bordercolor="#000000">

<frame src="izquierdo.php?$login" name="marcoizquierdo" scrolling="NO" noresize <?php
echo $_GET["$login"];
?>>
<frame src="derecho.html" name="marcoderecho"></frameset>

<frame src="pie.html" name="marcoinferior" frameborder="yes" scrolling="NO" noresize>
</frameset><noframes></noframes>

</html>
