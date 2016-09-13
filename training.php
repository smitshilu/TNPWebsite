<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_logged_in();?>
<?php
	if(!logged_in())
	{
		redirect_to("index.php");
	}
    $id=$_SESSION['sessionid'];
	$query="select `Project_id`,`Userid`,`Title`,`Tools`,`Category`,`Name1`,`Designation`,`Mobileno`,`Email1`,`Name2`,
			`City`,`Address`,`Contact`,`Fax`,`Email2`,`Url` from `training` where `Userid`='$id'";
	$result_set = mysql_query($query);
	confirm_query($result_set);
	$result=mysql_fetch_array($result_set);
?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
		<hgroup><h2 class="welcome">Training Details</h2></hgroup>
						<?php   echo "
							<table cellpadding=\"8\">
							<tr>
							<td>Project ID</td>
							<td>$result[0]</td>
							</tr>
							<tr>
							<td>User ID</td>
							<td>$id</td>
							</tr>
							<tr>
							<td>Project Title</td>
							<td>$result[2]</td>
							</tr>
							<tr>
							<td>Tools &amp; Technology</td>
							<td>$result[3]</td>
							</tr>
							<tr>
							<td>Project Category</td>
							<td>$result[4]</td>
							</tr>
							<th>INDUSTRY GUIDE</th>
							<tr>
							<td>Name</td>
							<td>$result[5]</td>
							</tr>
							<tr>
							<td>Designation</td>
							<td>$result[6]</td>
							</tr>
							<tr>
							<td>Mobile no.</td>
							<td>$result[7]</td>
							</tr>
							<tr>
							<td>Email</td>
							<td>$result[8]</td>
							</tr>
							<th>INDUSTRY</th>
							<tr>
							<td>Name</td>
							<td>$result[9]</td>
							</tr>
							<tr>
							<td>City</td>
							<td>$result[10]</td>
							</tr>
							<tr>
							<td>Address</td>
							<td>$result[11]</td>
							</tr>
							<tr>
							<td>Contact No.</td>
							<td>$result[12]</td>
							</tr>
							<tr>
							<td>Fax</td>
							<td>$result[13]</td>
							</tr>
							<tr>
							<td>Email</td>
							<td>$result[14]</td>
							</tr>
							<tr>
							<td>URL</td>
							<td>$result[15]</td>
							</tr>
							</table>";
						?>			
	</section>
<?php include("includes/footer1.php");?>