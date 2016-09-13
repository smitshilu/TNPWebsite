<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php confirm_tpo_logged_in();?>
<?php
	if (isset($_POST['submit']))
	{
		$name=$_POST['Name'];
		$date=$_POST['Date'];
		$details=$_POST['Details'];
		$criteria=$_POST['Criteria'];
		$deadline=$_POST['Deadline'];;
		if(empty($name)||empty($date)||empty($details)||empty($criteria)||empty($deadline))
		{
			echo "<script language=javascript>alert('Please fill the required fields!');</script>";
			$message.= "\n Please fill the required fields. ";
		}
		if(empty($message))
		{
			$query = "UPDATE `company` SET
			`Date`='{$date}', `Details`='{$details}',
			`Criteria`='{$criteria}', `Deadline`='{$deadline}'
			where `Name`='$name'";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			
			$truncate_query=mysql_query("TRUNCATE TABLE `{$name}`");
			confirm_query($truncate_query);
			
			
			
			if($result_set)
			{
				echo "<script language=javascript>alert('Your Details are successfully updated!');</script>";
				
				redirect_to("view_placement.php");
			}
			else
			{
				$message="Try again".mysql_error();
			}
			
		}
	}
	else if (isset($_POST['edit'])) 
	{
		//echo "<script language=javascript>alert('hi');</script>";
		$name=$_POST['edit'];
		$query = "SELECT `Date`,`Details`,`Criteria`,`Deadline`
							FROM `company` where Name='{$name}'";
		//echo "$query";
		$result = mysql_query($query);
		confirm_query($result);
		$temp=mysql_fetch_array($result);
		$num=mysql_num_rows($result);
		$date=$temp[0];
		//echo "<script language=javascript>alert('$num');</script>";
		$details=$temp[1];
		$criteria=$temp[2];
		$deadline=$temp[3];
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
			changeYear: true,
			yearRange: '1985:2020'
		});
	});
	$(function() {
		$( ".datepicker1" ).datepicker({
			changeMonth: true,
			changeYear: true,
			yearRange: '1985:2020'
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
			<hgroup><h2 class="welcome">Update Company Details</h2></hgroup>
			<form action="edit_company.php" method="post">
			<table>
			<tr>
			<td>Name</td>
			<td>
			<label for="Name"><?php echo $name; ?></label>
			<input type=hidden name="Name" value="<?php echo $name; ?>"></td>
			</tr>
			<td>Date</td>
			<td><input type=text name="Date" id="datepicker" class="datepicker" value="<?php echo $date; ?>"></td>
			</tr>
			<tr>
			<td>Details</td>
			<td><textarea rows="8" cols="20" name="Details"><?php echo $details; ?></textarea></td>
			</tr>
			<tr>
			<td>Criteria</td>
			<td><input type=text name="Criteria" value="<?php echo $criteria; ?>"></td>
			</tr>
			</tr>
			<td>Deadline</td>
			<td><input type=text name="Deadline" id="datepicker1" class="datepicker1" value="<?php echo $deadline; ?>"></td>
			</tr>
			<tr>
			<td align="center"><input type="submit" name="submit" class="buttons" style="border: none" value="Update"></td>
			<td align="center"><input type="reset" name="reset" class="buttons" style="border: none" value="Reset"></td>
			</tr>
			</table>
			</form>
	</section>
<?php include("includes/footer1.php");?>