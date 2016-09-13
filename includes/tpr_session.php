<?php
session_start();
function logged_in()
{
	return isset($_SESSION['sessionid']);
}
function confirm_logged_in()
{
	if(!logged_in())
	{
		redirect_to("tpr_login.php");
	}
}
if(isset($_POST['branch']))
{
	$_SESSION['branch']=$_POST['branch'];
}
?>