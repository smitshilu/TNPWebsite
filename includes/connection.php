<?php
$con=mysql_connect("localhost","root","smit16");
if(!$con)
{
die("could not connect".mysql_error());
}
$db_select=mysql_select_db("student",$con);
if(!$db_select)
{
die("database not selected".mysql_error());
}
?>