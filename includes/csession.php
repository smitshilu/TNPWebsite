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
		redirect_to("login_form.php");
	}
}
function tpo_logged_in()
{
	return isset($_SESSION['sessionid1']);
}
function confirm_tpo_loged_in()
{
	if(!tpo_logged_in())
	{
		redirect_to("login_form.php");
	}
}

function c_logged_in()
{
	return isset($_SESSION['sessionid3']);
}
function confirm_c_logged_in()
{
	if(!c_logged_in())
	{
		redirect_to("clogin.php");
	}
}
if(isset($_POST['course']))
{
	$_SESSION['course']=$_POST['course'];
	$_SESSION['branch']=implode("','",$_SESSION['course']);
}
// if(isset($_POST['cgpa']))
// {
	// $_SESSION['cgpa']=$_POST['cgpa'];
// }
// if(isset($_POST['10th']))
// {
		// $_SESSION['tenth']=$_POST['10th'];
// }
// if(isset($_POST['12th']))
// {
		// $_SESSION['twelth']=$_POST['12th'];
// }
// if(isset($result))
// {
		// $_SESSION['result']=$result;
// }

					
?>