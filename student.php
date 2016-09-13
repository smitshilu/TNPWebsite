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
	if(placed($id))
	{
		redirect_to("placed_student.php");
	}
?>
<?php 
	$company;
	$temp_company=array();
	$temp_deadline=array();
	
	$company_result=mysql_query("select `userid`,`deadline` from `company`");
	confirm_query($company_result);
	while($row = mysql_fetch_array($company_result))
	{
		if(getDays($time,$row[1])>0){
		$temp_company[]=$row[0];
		$temp_deadline[]=(int)getDays($time, $row[1]);
		}
	}
	$_SESSION[$id]['deadline']=$temp_deadline;
	$_SESSION[$id]['company']=$temp_company;
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
						<hgroup><h3 class="welcome">Upcoming Companies</h3></hgroup>
						<?php 
						if($temp_company)
						{
						echo"<form action=\"apply.php\" method=post>
						<input class=buttons type=submit value=\"Apply for companies\" />
						</form>";
						}
						echo"<form action=\"cancel.php\" method=post>
						<input class=buttons type=submit value=\"Cancel the application for company\" />
						<h4>(To cancel the applied companies)</h4>
						</form>";
						
						?>		
							
	</section>
<?php include("includes/footer1.php");?>