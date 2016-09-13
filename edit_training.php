<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_logged_in();?>
<?php $id=$_SESSION['sessionid'];?>
<?php
	if(!logged_in())
	{
		redirect_to("index.php");
	}
	if(isset($_POST['submit'])) 
	{
			$title = mysql_prep($_POST['title']);
			$tools = mysql_prep($_POST['tools']);
			$category = mysql_prep($_POST['category']);
			$name1 = mysql_prep($_POST['name1']);
			$designation = mysql_prep($_POST['designation']);
			$mobileno = mysql_prep($_POST['mobileno']);
			$email1 = mysql_prep($_POST['email1']);
			$name2 = mysql_prep($_POST['name2']);
			$city = mysql_prep($_POST['city']);
			$address = mysql_prep($_POST['address']);
			$contact = mysql_prep($_POST['contact']);
			$fax = mysql_prep($_POST['fax']);
			$email2 = mysql_prep($_POST['email2']);
			$url = mysql_prep($_POST['url']);
			$qry = "select * from `training` where `Userid`='$id'";
			$rst = mysql_query($qry);
			confirm_query($rst);
			$temp=mysql_fetch_array($rst);
			if($temp==NULL)
			{
				$query = "INSERT INTO `training` ( `Userid`,`Title`, `Tools`, `Category`, `Name1`, `Designation`, `Mobileno`, 
						`Email1`, `Name2`, `City`, `Address`, `Contact`, `Fax`, `Email2`, `Url`) values
						( '{$id}','{$title}','{$tools}','{$category}', '{$name1}','{$designation}','{$mobileno}', '{$email1}','{$name2}', 
						 '{$city}','{$address}', '{$contact}','{$fax}','{$email2}','{$url}')";
				$result_set = mysql_query($query);
				confirm_query($result_set);
				if($result_set)
				{
						echo "<script language=javascript>alert('Your Details are successfully added!');</script>";
				}
				else{
						$message="Try again".mysql_error();
					}
			}
			else {

				$query = "UPDATE `training` SET 
					`Title`='{$title}', `Tools`='{$tools}', `Category`='{$category}', 
					`Name1`='{$name1}', `Designation`='{$designation}', `Mobileno`='{$mobileno}', 
					`Email1`='{$email1}', `Name2`='{$name2}', `City`='{$city}', `Address`='{$address}', 
					`Contact`='{$contact}', `Fax`='{$fax}', `Email2`='{$email2}', `Url`='{$url}' where `Userid`='$id'";
					$result_set = mysql_query($query);
					confirm_query($result_set);
					if($result_set)
					{
						echo "<script language=javascript>alert('Your Details are successfully updated!');</script>";
					}
					else{
						$message="Try again".mysql_error();
						}
				}
			
	}
?>
<?php
	$query="select `Project_id`,`Userid`,`Title`,`Tools`,`Category`,`Name1`,`Designation`,`Mobileno`,`Email1`,`Name2`,
			`City`,`Address`,`Contact`,`Fax`,`Email2`,`Url` from `training` where `Userid`='$id'";
	$default = mysql_query($query);
	confirm_query($default);
	$def=mysql_fetch_array($default);
?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
		<hgroup><h3 class="welcome">Edit Training Details</h3></hgroup>
						<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
							<form action="edit_training.php" method="post">
							<table id="inner">
							<tr>
							<td>Project ID</td>
							<td></td>
							</tr>
							<tr>
							<td>User ID</td>
							<td><?php echo $id;?></td>
							</tr>
							<tr>
							<td>Project Title</td>
							<td><input type=text name="title" value="<?php echo $def[2]; ?>"></td>
							</tr>
							<tr>
							<td>Tools &amp; Technology</td>
							<td><input type=text name="tools" value="<?php echo $def[3]; ?>"></td>
							</tr>
							<tr>
							<td>Project Category</td>
							<td><input type=text name="category" value="<?php echo $def[4]; ?>"></td>
							</tr>
							<th>INDUSTRY GUIDE</th>
							<tr>
							<td>Name</td>
							<td><input type=text name="name1" value="<?php echo $def[5]; ?>"></td>
							</tr>
							<tr>
							<td>Designation</td>
							<td><input type=text name="designation" value="<?php echo $def[6]; ?>"></td>
							</tr>
							<tr>
							<td>Mobile no.</td>
							<td><input type=number name="mobileno" value="<?php echo $def[7]; ?>"></td>
							</tr>
							<tr>
							<td>Email</td>
							<td>
							<input type=email name="email1" value="<?php echo $def[8]; ?>"></td>
							</tr>
							<th>INDUSTRY</th>
							<tr>
							<td>Name</td>
							<td><input type=text name="name2" value="<?php echo $def[9]; ?>"></td>
							</tr>
							<tr>
							<td>City</td>
							<td><input type=text name="city" value="<?php echo $def[10]; ?>"></td>
							</tr>
							<tr>
							<td>Address</td>
							<td><textarea rows="8" cols="40" name="address" value="<?php echo $def[11]; ?>"></textarea></td>
							</tr>
							<tr>
							<td>Contact No.</td>
							<td><input type=number name="contact" value="<?php echo $def[12]; ?>"></td>
							</tr>
							<tr>
							<td>Fax</td>
							<td><input type=number name="fax" value="<?php echo $def[13]; ?>"></td>
							</tr>
							<tr>
							<td>Email</td>
							<td><input type=email name="email2" value="<?php echo $def[14]; ?>"></td>
							</tr>
							<tr>
							<td>URL</td>
							<td><input type=text name="url" value="<?php echo $def[15]; ?>"></td>
							</tr>
							<tr>
							<td align="center"><input type="submit" class="buttons" style="border: none" name="submit"></td>
							<td align="center"><input type="reset" class="buttons" style="border: none" name="reset" value="Reset"></td>
							</tr>
							</table>
							</form>
	</section>
<?php include("includes/footer1.php");?>