<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php confirm_tpo_logged_in();?>
<?php
	$qry = "select `Name` from `expert`";
	$res = mysql_query($qry);
	confirm_query($res);
?>
<?php
	if (isset($_POST['submit'])) 
	{
		$name = trim(mysql_prep($_POST['name']));
		$date = trim(mysql_prep($_POST['date']));
		$details = trim(mysql_prep($_POST['details']));
		$feedbacke = trim(mysql_prep($_POST['feedbacke']));
		$feedbacks = trim(mysql_prep($_POST['feedbacks']));
		if(!empty($date) || !empty($name) || !empty($details) || !empty($feedbacke) || !empty($feedbacks))
		{
			$query = "insert into `expert` (`Name`,`Date`,`Details`,`Feedbacke`,`Feedbacks`)values 
						('{$name}','{$date}','{$details}','{$feedbacke}','{$feedbacks}')";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			if($result_set)
				{
					echo "<script language=javascript>alert('Event Successfully added!');</script>";
					$name="";
					$date="";
					$details="";
					$feedbacke="";
					$feedbacks="";
				}
				else
				{
					$message="Try again".mysql_error();
				}
		}
	}
	else if(isset($_POST['deletion']))
	{
		$delete = trim(mysql_prep($_POST['delete']));
		if($delete="Select...")
		{
			redirect_to("expert.php");
		}
		$query = "delete from `expert` where `Name`='$delete'"; 
 		$result_set2 = mysql_query($query);
		confirm_query($result_set2);
		if($result_set2)
			{
				echo "<script language=javascript>alert('Expert Talk Successfully deleted!');</script>";
				$name="";
				$date="";
				$details="";
				$feedbacke="";
				$feedbacks="";
				$delete="";
			}
			else
			{
				$message="Try again".mysql_error();
			}
	}
	else
	{
				$name="";
				$date="";
				$details="";
				$feedbacke="";
				$feedbacks="";
				$delete="";
	}
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
	<script src="javascripts/jquery.ui.widget.js"></script>
	<script src="javascripts/jquery.ui.datepicker.js"></script>
	<script>
	$(function() {
		$( ".datepicker" ).datepicker({
			changeMonth: true,
			changeYear: true
		});
	});
	</script>
</head>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
                            <li><a class="sidelink" href="tpo.php">TPO Area </a></li>
                            <li><a class="sidelink" href="tpologout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
			<hgroup><h2 class="welcome">Add Expert Talk Details</h2></hgroup>
						<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
						<form action="expert.php" method="post">
							<p>Name:<input type="text" name="name" value=""></p>
							<p>Date:<input type="text" name="date" id="datepicker" class="datepicker"value=""></p>
							<p>Details:</br>
							   <textarea id="details" name="details" rows="10" cols="40">
							   </textarea></p>
							<p>Feedback From Expert:</br>
							   <textarea name="feedbacke" rows="10" cols="40">
							   </textarea></p>
							<p>Feedback From Student:
							   <select name="feedbacks">
							   <option value="">Select...</option>
						       <option value="1">1</option>
						       <option value="2">2</option>
						       <option value="3">3</option>
						       <option value="4">4</option>
						       <option value="5">5</option>
						       </select>
							   </p></br></br></br></br></br></br>
							<p><input type="submit" name="submit" class="buttons" style="border: none" value="submit"></p>
						</form>
						<form action="expert.php" method="post">
							<hgroup><h3 class="welcome">Delete an Expert Talk</h3></hgroup>
							Select the Expert Talk Name here:
							<?php
							echo "<select name=\"delete\">";
							echo "<option value=''>Select...</option>";
							while($rest = mysql_fetch_array($res))
								{
									echo "<option value='$rest[0]'>$rest[0]</option>";
								}
								echo "</select>";
							?></br></br></br>
							<p><input type="submit" name="deletion" class="buttons" style="border: none" value="Delete"></p>
						</form>
	</section>
<?php include("includes/footer1.php");?>