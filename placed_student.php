<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php date_default_timezone_set('Asia/Kolkata');
$time=date_default_timezone_get();?>
<?php confirm_logged_in();?>
<?php
	  if(!logged_in())
	  {
		redirect_to("index.php");
	  }
?>
<?php 
$id=$_SESSION['sessionid'];
$company_query=mysql_query("select `company` from `placed_students` where userID='{$id}'");
confirm_query($company_query);

$company=mysql_fetch_array($company_query);
?>

<html>
<head>
    <title>::T&P CEll::</title>
	    <link rel="Stylesheet" type="text/css" href="stylesheets/css3.css" />
    <!--[if IE]>
    <script type="text/javascript" src="js/html5.js"></script>
<![endif]-->

	<link rel="stylesheet" type="text/css" href="stylesheets/jquery.ui.all.css">
	<script src="javascripts/jquery-1.9.0.js"></script>
	<script src="javascripts/jquery.ui.core.js"></script>
	<script src="javascripts/jquery.min.js"></script>
</head>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
						<p>Welcome <b><font color="red"><?php echo $_SESSION['sessionid'];?></font></b></p>
						<hgroup><h3 class="welcome">Congratulations!</h3></hgroup>
						<?php echo "you are selected for ".$company[0];?>
	</section>
<?php include("includes/footer1.php");?>