<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php 
confirm_tpo_logged_in();
date_default_timezone_set('Asia/Kolkata');
?>
<?php

	$qry = "select `Title` from `news`";
	$res = mysql_query($qry);
	confirm_query($res);
?>
<?php
	if (isset($_POST['submit'])) 
	{
		$time=getdate();
		$users=array();
		
		$count=0;
		$title = trim(mysql_prep($_POST['title']));
		$content = trim(mysql_prep($_POST['content']));
		$date = trim(mysql_prep($_POST['date']));
		$subject="Notification from CSPIT-T&P Cell-".$title;
		$body=$content."<br>for more information - localhost/code/news_details.php";
		$user_query=mysql_query("select `userid` from `users` where activated=1 and email_verified=1");
		confirm_query($user_query);
	/*	while($row = mysql_fetch_array($user_query))
		{
			email($row['userid'], $subject, $body);
			$count++;
		}*/
		
		
		if(!empty($date) || !empty($title) || !empty($content))
		{
			$query = "insert into `news` (`Title`,`Content`,`Date`)values 
						('{$title}','{$content}','{$date}')";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			if($result_set)
				{
					echo "<script language=javascript>alert('News Successfully added!');</script>";
					$title="";
					$content="";
					$date="";
				}
				else
				{
					$message="Try again".mysql_error();
				}
		}
	}
	if(isset($_POST['deletion']))
	{
		$delete = trim(mysql_prep($_POST['delete']));
		
		$query = "delete from `news` where `Title`='$delete'"; 
 		$result_set2 = mysql_query($query);
		confirm_query($result_set2);
		if($result_set2)
			{
				echo "<script language=javascript>alert('News Details Successfully deleted!');</script>";
				$title="";
				$content="";
				$date="";
				$delete="";
			}
			else
			{
				$message="Try again".mysql_error();
			}
	}
	else
	{
				$title="";
				$content="";
				$date="";
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
			<hgroup><h2 class="welcome">Add News</h2></hgroup>
						<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
						<form action="news.php" method="post">
						<table>
						<tr>
						<td>Title</td>
						<td><textarea rows="5" cols="40" name="title"></textarea></td>
						</tr>
						<tr>
						<td>Content</td>
						<td><textarea rows="8" cols="40" name="content"></textarea></td>
						</tr>
						<tr>
						<td>Date</td>
						<td><input type="text" name="date" class="datepicker"></td>
						</tr>
						</table>
						</br></br></br></br></br>
						<p><input type="submit" name="submit" class="buttons" style="border: none" value="Add!"></p>
						</form>
						<form action="news.php" method="post">
						<hgroup><h3 class="welcome">Delete a News Detail</h3></hgroup>
						Select the News Title here:
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