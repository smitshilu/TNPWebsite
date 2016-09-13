<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php $id=$_SESSION['sessionid'];
confirm_logged_in();?>
<?php
	
	if (isset($_POST['submit'])) 
	{
		$userid = $id;
		$Firstname = mysql_prep($_POST['Firstname']);
		$Middlename = mysql_prep($_POST['Middlename']);
		$Lastname = mysql_prep($_POST['Lastname']);
		if('d'==(substr($id,0,1)))
		{
			$Branch=strtoupper(substr($id,3,2));
			$Year="20".substr($id,1,2)+3;
		}
		else
		{
			$Branch=strtoupper(substr($id,2,2));
			$Year="20".substr($id,0,2)+4;
		}
		$Gender = mysql_prep($_POST['Gender']);
		$DOB = mysql_prep($_POST['DOB']);
		$Guardian = mysql_prep($_POST['Guardian']);
		$Address = mysql_prep($_POST['Address']);
		$City = mysql_prep($_POST['City']);
		$Mobileno = mysql_prep($_POST['Mobileno']);
		$Homeno = mysql_prep($_POST['Homeno']);
		
		$Diplomaresult = mysql_prep($_POST['Diplomaresult']);
		$Sem1 = mysql_prep($_POST['Sem1']);
		$Sem2 = mysql_prep($_POST['Sem2']);
		$Sem3 = mysql_prep($_POST['Sem3']);
		$Sem4 = mysql_prep($_POST['Sem4']);
		$Sem5 = mysql_prep($_POST['Sem5']);
		$Sem6 = mysql_prep($_POST['Sem6']);
		
		$CGPA = mysql_prep($_POST['CGPA']);	
		$Areaofinterest= trim(mysql_prep($_POST['Areaofinterest']));	
		$References= trim(mysql_prep($_POST['References']));

		
		
		$qry = "select * from `student_details` where `Userid`='$id'";
		$rst = mysql_query($qry);
		confirm_query($rst);
		$temp=mysql_fetch_array($rst);
		if($temp==NULL)
		{
			$query1 = "SELECT branch_ID FROM branch WHERE branch_name='{$Branch}'";
			$result_set = mysql_query($query1);
			confirm_query($result_set);
			if (mysql_num_rows($result_set) == 1 ) {
				// username/password authenticated
				// and only 1 match
				$q2 = mysql_fetch_array($result_set);
			}
			
			//echo "<script language=javascript>alert('{$q2[0]}');</script>";
			
			$query = "INSERT INTO `student_details`(`Userid`, `Firstname`, `Middlename`, `Lastname`, `Year`, `Branch`,`branch_id`, `Gender`, `DOB`, `Guardian`, `Address`, `City`, `Mobileno`, `Homeno`, `Diplomaresult`, `Sem1`, `Sem2`, `Sem3`, `Sem4`, `Sem5`, `Sem6`, `CGPA`, `Areaofinterest`, `References`)
			VALUES (
			'{$userid}', '{$Firstname}','{$Middlename}','{$Lastname}','{$Year}','{$Branch}', '{$q2[0]}','{$Gender}','{$DOB}','{$Guardian}','{$Address}','{$City}','{$Mobileno}','{$Homeno}',
			'{$Diplomaresult}','{$Sem1}','{$Sem2}','{$Sem3}','{$Sem4}','{$Sem5}','{$Sem6}','{$CGPA}','{$Areaofinterest}','{$References}'
			)";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			
			if($result_set)
			{
						echo "<script language=javascript>alert('Your Details are successfully added!');</script>";
                        redirect_to("details.php");
			}
			else{
						$message="Try again".mysql_error();
				}
		}
		else {
				$query = "UPDATE `student_details` SET 
						`Userid`='{$userid}', `Firstname`='{$Firstname}', `Middlename`='{$Middlename}', `Lastname`='{$Lastname}',
						`Year`='{$Year}', `Branch`='{$Branch}', `Gender`='{$Gender}', `DOB`='{$DOB}', 
						`Guardian`='{$Guardian}', `Address`='{$Address}',`City`='{$City}', `Mobileno`='{$Mobileno}', 
						`Homeno`='{$Homeno}',
						`Diplomaresult`='{$Diplomaresult}', `Areaofinterest`='{$Areaofinterest}', `References`='{$References}'
						where `Userid`='$id'";
				$result_set = mysql_query($query);
				confirm_query($result_set);
				if($result_set)
				{
                        echo "<script language=javascript>alert('Your Details are successfully updated!');</script>";
						redirect_to("details.php");
    			}
				else{
						$message="Try again".mysql_error();
					}
			}
			
	}
?>
<?php
	$query="select `Userid`,`Firstname`,`Middlename`,`Lastname`,`Year`,`Branch`,`Gender`,`DOB`,`Guardian`,`Address`,
			`City`,`Mobileno`,`Homeno`,`Tenthresult`,`Twelthresult`,`Diplomaresult`,`Sem1`, `Sem2`, `Sem3`, `Sem4`, `Sem5`, 
			`Sem6`, `CGPA`, `Areaofinterest`, `References`
			from `student_details` where `Userid`='$id'";
	$default = mysql_query($query);
	confirm_query($default);
	$def=mysql_fetch_array($default);
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
		$( "#datepicker" ).datepicker({
			changeMonth: true,
			changeYear: true,
			yearRange: '1985:2020'
		});
	});
	</script>
</head>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
		<hgroup><h2 class="welcome">Add Your Details</h2></hgroup>
			<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
			<form action="edit_details.php" method="post">
			<table>
			<tr>
			<td>Userid</td>
			<td><label> <?php echo $id; ?></label></td>
			</tr>
			<tr>
			<td>Firstname</td>
			<td><input type=text name="Firstname" value="<?php echo $def[1]; ?>"></td>
			</tr>
			<tr>
			<td>Middlename</td>
			<td><input type=text name="Middlename" value="<?php echo $def[2]; ?>"></td>
			</tr>
			<tr>
			<td>Lastname</td>
			<td><input type=text name="Lastname" value="<?php echo $def[3]; ?>"></td>
			</tr>
			<tr>
			<td>Gender</td>
			<td>
			<input type=radio name="Gender" value="male" <?php
				if($def[6]=="male")
				{
					echo "checked";
				}
					
			?>>Male</td>
			</tr>
			<tr>
			<td></td>	
			<td><input type=radio name="Gender" value="female" <?php
				if($def[6]=="female")
				{
					echo "checked";
				}
					
			?>>Female</td>
			</tr>
			<tr>
			<td>DOB</td>
			<td><input type=text name="DOB" id="datepicker" value="<?php echo $def[7]; ?>"></td>
			</tr>
			<tr>
			<td>Guardian's Occupation</td>
			<td><input type=text name="Guardian" value="<?php echo $def[8]; ?>"></td>
			</tr>
			<tr>
			<td>Address</td>
			<td><textarea rows="8" cols="40" name="Address"><?php echo $def[9]; ?></textarea></td>
			</tr>
			<tr>
			<td>City</td>
			<td><input type=text name="City" value="<?php echo $def[10]; ?>"></td>
			</tr>
			<tr>
			<td>Mobileno</td>
			<td><input type=text name="Mobileno"  pattern="[0-9]{10}" value="<?php echo $def[11]; ?>"></td>
			</tr>
			<tr>
			<td>Homeno</td>
			<td><input type=number name="Homeno" value="<?php echo $def[12]; ?>"></td>
			</tr>
			<tr>
			<td>10th Result</td>
			<td><?php echo $def[13]; ?></td>
			</tr>
			<tr>
			<td>12th Result</td>
			<td><?php echo $def[14]; ?></td>
			</tr>
			<tr>
			<td>Diploma Result</td>
			<td><?php echo $def[15]; ?></td>
			</tr>
			<tr>
			<td>Sem 1</td>
			<td><?php echo $def[16]; ?></td>
			</tr>
			<tr>
			<td>Sem 2</td>
			<td><?php echo $def[17]; ?></td>
			</tr>
			<tr>
			<td>Sem 3</td>
			<td><?php echo $def[18]; ?></td>
			</tr>
			<tr>
			<td>Sem 4</td>
			<td><?php echo $def[19]; ?></td>
			</tr>
			<tr>
			<td>Sem 5</td>
			<td><?php echo $def[20];?></td>
			</tr>
			<tr>
			<td>Sem 6</td>
			<td><?php echo $def[21]; ?></td>
			</tr>
			<tr>
			<td>CGPA</td>
			<td><?php echo $def[22]; ?></td>
			</tr>
			<tr>
			<td>Area of interest</td>
			<td><textarea rows="8" cols="40" name="Areaofinterest"><?php echo $def[23]; ?></textarea></td>
			</tr>
			<tr>
			<td>References</td>
			<td><textarea rows="8" cols="40" name="References"><?php echo $def[24]; ?></textarea></td>
			</tr>
			<tr>
			<td align="center"><input type="submit" name="submit" class="buttons" style="border: none" value="Submit"></td>
			<td align="center"><input type="reset" name="reset" class="buttons" style="border: none" value="Reset"></td>
			</tr>
			</table>
			</form>
	</section> 
<?php include("includes/footer1.php");?>