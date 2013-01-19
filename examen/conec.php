<?php
function conectarse()
{
   if (!($link=mysql_connect("localhost","root","")))
   {
      exit();
   }
   if (!mysql_select_db("is",$link))
   {
      exit();
   }
   return $link;
}
?>