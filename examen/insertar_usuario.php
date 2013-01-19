<?php
include("conec.php");
$link=conectarse();
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$login=$_POST["login"];
$pass=$_POST["pass"];
$pa = "CALL USP_Registrar_usuario('".$login."','".$pass."','".$nombre."','".$apellido."',@res)"; 
$result = mysql_query($pa,$link);
if ($result){ 
@			$resultado = mysql_query("SELECT @res AS resultado;");
@			$row = mysql_fetch_array($resultado); 
			if ($row["resultado"]==1)
			{
				echo "Usuario ingresado correctamente ";
			}					
		
		else
		{    
			echo "El usuario ya existe, no es posible almacenar nuevamente ";
		}
		
}
echo "</br>"; 
echo "<a href=index.php>Volver a inicio</a>";
?>