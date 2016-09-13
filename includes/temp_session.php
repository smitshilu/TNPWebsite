<?php
session_start();
function logged_in()
{
	return isset($_SESSION['sessionid']);
}
function tpo_logged_in()
{
	return isset($_SESSION['sessionid1']);
}
function tpr_logged_in()
{
	return isset($_SESSION['sessionid2']);
}
function c_logged_in()
{
	return isset($_SESSION['sessionid3']);
}
function confirm_tpr_logged_in()
{
	if(!tpr_logged_in())
	{
		redirect_to("tprlogin.php");
	}
}
function confirm_logged_in()
{
	if(!logged_in())
	{
		redirect_to("index.php");
	}
}

function confirm_tpo_logged_in()
{
	if(!tpo_logged_in())
	{
		redirect_to("tpologin.php");
	}
}

function confirm_c_logged_in()
{
	if(!c_logged_in())
	{
		redirect_to("clogin.php");
	}
}
if(isset($_POST['branch']))
{
	$_SESSION['branch']=$_POST['branch'];
}
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