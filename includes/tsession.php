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
		redirect_to("tpologin.php");
	}
}


function tpr_logged_in()
{
	return isset($_SESSION['sessionid2']);
}

function confirm_tpr_logged_in()
{
	if(!tpr_logged_in())
	{
		redirect_to("tprlogin.php");
	}
}

function tpo_logged_in()
{
	return isset($_SESSION['sessionid1']);
}
function confirm_tpo_logged_in()
{
	if(!tpo_logged_in())
	{
		redirect_to("tpologin.php");
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

if(isset($_POST['branch']))
{
	$_SESSION['branch']=$_POST['branch'];
}
?>