<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_tpr_logged_in();?>
<?php 
if (isset($_POST['submit'])) 
	{
	
		// MySQL connection details
		
		$username=trim(mysql_prep($_POST['userID']));
		$password=trim(mysql_prep($_POST['password1']));
		$password2=$_POST['password2'];
		$oldpass=$_POST['oldpass'];
		$hashed_old=sha1($oldpass);
		
		//echo "<script language=javascript>alert('{$hashed_old}');</script>";
		
		$results = mysql_query("SELECT password FROM tpr WHERE userid = '$username'") or             die(mysql_error());
			$q1 = mysql_fetch_array($results);
		
			if (!$q1) {
				
				// The user does not exist in the database.
				echo "<script language=javascript>alert('Username or Password Incorrect');</script>";
				$message = "<b>Username or password incorrect.</b><br />";
				
			}
			
		
			if ($hashed_old ==$q1[0]) {
				
				// The current password matches the input from the oldpass field.
				
				
					// Password meets requirements
					if ($password == $password2) {
						//Passwords match, update the password in the database
						$hashed_new=sha1($password);
						mysql_query("UPDATE tpr SET password='$hashed_new' where         userid='$username'") or die(mysql_error());
						echo "<script language=javascript>alert('Password changed')</script>";
						redirect_to("tpr.php");
					}
					else {
						// The new passwords do not match
						echo "<script language=javascript>alert('Password do not match');</script>";
					}
				
				
		
			}
	}
		?>

		
<?php include("includes/header.php"); ?>
<div id="main">
	<table id="structure">
	<tr>
	<td id="navigation">
	<a href="tpr.php">Back</a><br>
	<a href="tprlogout.php">Logout</a>
	</td>
	<td id="page">
	<h2>Login</h2>
	<?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?>
	<form action="tpr_pass.php" method="post">
	<table id="inner" cellpadding="10">
	<tr>
	<td> UserID</td>
	<td><input type=text name="userID" id="password" value=""></td>
	</tr>
	
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
	<td><input type="submit" name="submit" value="Change Password"></td>
	</tr>
	</table>
	</form>
	</td>
	</tr>
	</table>
	
</div>
<?php require("includes/footer.php");?>