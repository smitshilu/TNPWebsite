<!Doctype HTML>
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
	$query="select `Userid`,`Firstname`,`Middlename`,`Lastname`,`Year`,`branch`,`Gender`,`DOB`,`Guardian`,`Address`,
			`City`,`Mobileno`,`Homeno`,`Tenthresult`,`Twelthresult`,`Diplomaresult`,`Sem1`, `Sem2`, `Sem3`, `Sem4`, `Sem5`, 
			`Sem6`, `CGPA`, `Areaofinterest`, `References`
			from `student_details` where `Userid`='$id'";
	$result_set = mysql_query($query);
	confirm_query($result_set);
	$result=mysql_fetch_array($result_set);
	
	?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
	<hgroup><h2 class="welcome">Academic Details</h2></hgroup>
						<?php   echo "
							<table cellpadding=\"8\">
							<tr>
							<td>User ID</td>
							<td>$result[0]</td>
							</tr>
							<tr>
							<td>Firstname</td>
							<td>$result[1]</td>
							</tr>
							<tr>
							<td>Middlename</td>
							<td>$result[2]</td>
							</tr>
							<tr>
							<td>Lastname</td>
							<td>$result[3]</td>
							</tr>
							<tr>
							<td>Academic Year</td>
							<td>$result[4]</td>
							</tr>
							<tr>
							<td>Branch</td>
							<td>$result[5]</td>
							</tr>
							<tr>
							<td>Gender</td>
							<td>$result[6]</td>
							</tr>
							<tr>
							<td>DOB</td>
							<td>$result[7]</td>
							</tr>
							<tr>
							<td>Guardian's Occupation</td>
							<td>$result[8]</td>
							</tr>
							<tr>
							<td>Address</td>
							<td>$result[9]</td>
							</tr>
							<tr>
							<td>City</td>
							<td>$result[10]</td>
							</tr>
							<tr>
							<td>MObile No.</td>
							<td>$result[11]</td>
							</tr>
							<tr>
							<td>Home No.</td>
							<td>$result[12]</td>
							</tr>
							<tr>
							<td>10th Result</td>
							<td>$result[13]</td>
							</tr>
							<tr>
							<td>12th Result</td>
							<td>$result[14]</td>
							</tr>
							<tr>
							<td>Diploma Result</td>
							<td>$result[15]</td>
							</tr>
							<tr>
							<td>Sem 1</td>
							<td>$result[16]</td>
							</tr>
							<tr>
							<td>Sem 2</td>
							<td>$result[17]</td>
							</tr>
							<tr>
							<td>Sem 3</td>
							<td>$result[18]</td>
							</tr>
							<tr>
							<td>Sem 4</td>
							<td>$result[19]</td>
							</tr>
							<tr>
							<td>Sem 5</td>
							<td>$result[20]</td>
							</tr>
							<tr>
							<td>Sem 6</td>
							<td>$result[21]</td>
							</tr>
							<tr>
							
							</tr>
							<tr>
							<td>CGPA</td>
							<td>$result[22]</td>
							</tr>
							<tr>
							<td>Area of Interest</td>
							<td>$result[23]</td>
							</tr>
							<tr>
							<td>References</td>
							<td>$result[24]</td>
							</tr>
							<tr>
							</table>";
						?>			
	</section>
<?php include("includes/footer1.php");?>