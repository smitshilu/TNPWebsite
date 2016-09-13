<?php
session_start();
// function logged_in()
// {
	// return isset($_SESSION['sessionid']);
// }
// function confirm_logged_in()
// {
	// if(!logged_in())
	// {
		// redirect_to("index.php");
	// }
// }
if(isset($_POST['year']))
{
	$_SESSION['year']=$_POST['year'];
}
if(isset($_POST['course']))
{
	$_SESSION['course']=$_POST['course'];
	$branch=implode("','",$_SESSION['course']);
}
if(isset($_POST['cgpa']))
{
	$_SESSION['cgpa']=$_POST['cgpa'];
}
if(isset($_POST['10th']))
{
	$_SESSION['tenth']=$_POST['10th'];
}
if(isset($_POST['12th']))
{
	$_SESSION['twelth']=$_POST['12th'];
}	
?>