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
?>
<?php
if(isset($_POST['submit'])) 
	{
		$id=$_SESSION['sessionid'];
		$old = mysql_prep($_POST['old']);
		$new = mysql_prep($_POST['new']);
		$confirm = mysql_prep($_POST['confirm']);
		
		$old_hashed=sha1($old);
		$old_query=mysql_query("select hashed_password from users where userid = '$id' ");
		$fetch_old=mysql_fetch_array($old_query);
		
		if($old_hashed==$fetch_old[0])
		{
			if(strlen($new)<8)
			{
				echo "<script language=javascript>alert('Your Password must be of at least 8 characters');</script>";
			}
			else 
			{
				if(($new)==($confirm))
				{
					$hashed = sha1($new);
					$query = "UPDATE `users` SET `Hashed_password`= '{$hashed}' where `Userid`='$id'";
					$result_set = mysql_query($query);
					confirm_query($result_set);
							if($result_set)
							{
								redirect_to("student.php");
							}
							else{
								$message="Try again".mysql_error();
							}
					}
					else
					{
						$message="The Two Passwords don't match! Try again.";
					}
				}
		}
		else
		{
				echo"<script language=javascript>alert('Wrong old password')</script>";
		}
		
	}
	else
	{
		$new = "";
		$confirm = "";
	}
	
	
?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
						<hgroup><h3 class="welcome">Change Password</h3></hgroup>
						<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
						<form action="change.php" method="post">
						<table>
						<tr>
						<td>Old Password:</td>
						<td><input type="password" name="old"></td>
						</tr>
						<tr>
						<td></td>
						</tr>
						<tr>
						<td>New Password:</td>
						<td><input type="password" name="new"></td>
						</tr>
						<tr>
						<td></td>
						</tr>
						<tr>
						<td></td>
						</tr>
						<tr>
						<td>Confirm Password:</td>
						<td><input type="password" name="confirm"></td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
						<td align="center"><input type="submit" name="submit" class="buttons" style="border:none"></td>
						<td align="center"><input type="reset" name="reset" class="buttons" style="border: none" value="Reset"></td>
						</tr>
						</table>
						</form>
    </section>
<?php include("includes/footer1.php");?>