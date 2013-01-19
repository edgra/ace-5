<?php
include("conec.php");
$link=conectarse();

$login=$_POST["login"];
$pass=$_POST["pass"];
$pa = "CALL USP_Validar_usuario('".$login."','".$pass."',@res)"; 
$result = mysql_query($pa,$link);
if ($result){ 
@			$resultado = mysql_query("SELECT @res AS resultado;");
@			$row = mysql_fetch_array($resultado); 
			if ($row["resultado"]==1)
			{
				session_start();
				
				header("Location:/examen/molde?$log=$login");
			}					
		
		else
		{    
			echo "Datos  incorrectos ";
			echo "</br>"; 
            echo "<a href=index.php>Volver a inicio</a>";

		}
		
}
?>
