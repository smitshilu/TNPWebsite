<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php include_once("includes/form_functions.php");?>
<?php
	$return=validate();
	if(!empty($return))
	{
		redirect_to('new_subject.php');
	}
	$menu_name=mysql_prep($_POST['menu_name']);
	$position=mysql_prep($_POST['position']);
	$visible=mysql_prep($_POST['visible']);
?>
<?php
$query= "INSERT INTO menu(
		menu_name,position,visible) VALUES (
		'{$menu_name}','{$position}','{$visible}'
		)";

		if(mysql_query($query,$con))
		{
			redirect_to("content.php");
		}
		else
		{
			echo "<p>Subject creation failed</p>";
			echo "<p>".mysql_error."</p>";
		}
?>
<?php mysql_close($con);?>