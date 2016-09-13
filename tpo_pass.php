<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_tpo_logged_in(); ?>
<?php 
if (isset($_POST['submit'])) 
	{
	
		// MySQL connection details
		
		$username=$_SESSION['sessionid1'];
		$password=trim(mysql_prep($_POST['password1']));
		$password2=$_POST['password2'];
		$oldpass=$_POST['oldpass'];
		$hashed_old=sha1($oldpass);
		
		$results = mysql_query("SELECT password FROM tpo WHERE userid = '$username'") or             die(mysql_error());
			$q1 = mysql_fetch_array($results);
		
			if (!$q1) {
				
				// The user does not exist in the database.
				$message = "<b>password incorrect.</b><br />";
				
			}
			echo "<script language=javascript>alert('{$q1[0]}');</script>";
		
			if ($hashed_old ==$q1[0]) {
				
				// The current password matches the input from the oldpass field.
				echo "<script language=javascript>alert('in condition');</script>";
				if (strlen($password) > 7) {
					// Password meets requirements
					if ($password == $password2) {
						//Passwords match, update the password in the database
						$hashed_new=sha1($password);
						mysql_query("UPDATE tpo SET password='$hashed_new' where         userid='$username'") or die(mysql_error());
						echo "<script language=javascript>alert('Password changed');</script>";
						redirect_to("tpo.php");
					}
					else {
						// The new passwords do not match
						echo "<script language=javascript>alert('Password do not match');</script>";
					}
				}
				else {
					// Password is too short / long
					echo "<script language=javascript>alert('Password too short');</script>";
				}
		
			}
	}
		?>

		
<?php include("includes/header.php"); ?>
<div id="main">
	<table id="structure">
	<tr>
	<td id="navigation">
	<a href="tpo.php">TPO Area</a><br>
	<a href="index.php">Return To Home</a>
	</td>
	
	<td id="page">
	<h2>Login</h2>
	<?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?>
	<form action="tpo_pass.php" method="post">
	<table id="inner" cellpadding="10">
	
	<tr>
	<td> Old Password</td>
	<td><input type=password name="oldpass" id="password" value=""></td>
	</tr>
	<tr>
	<td> New Password</td>
	<td><input type=password name="password1" id="password" value=""></td>
	</tr>
	<tr>
	<td> Repeat New Password</td>
	<td><input type=password name="password2" id="password" value=""></td>
	</tr><tr>
	<td><input class=buttons type="submit" name="submit" value="Change Password"></td>
	</tr>
	</table>
	</form>
	</td>
	</tr>
	</table>
	
</div>
<?php require("includes/footer.php");?>