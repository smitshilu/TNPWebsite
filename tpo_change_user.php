<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_tpo_logged_in();?>
<?php 
if (isset($_POST['submit'])) 
	{
	
		// MySQL connection details
		
		$username=trim(mysql_prep($_POST['userID']));
		$user1=trim(mysql_prep($_POST['user1']));
		$user2=trim(mysql_prep($_POST['user2']));
		$oldpass=$_POST['oldpass'];
		$hashed_old=sha1($oldpass);
		
		$results = mysql_query("SELECT userID FROM tpo WHERE userid = '$username' AND password='{$hashed_old}'") or             die(mysql_error());
			$q1 = mysql_fetch_array($results);
		
			if (!$q1) {
				
				// The user does not exist in the database.
				echo "<script language=javascript>alert('Username or Password Incorrect');</script>";
				$message = "<b>Username or password incorrect.</b><br />";
				
			}
		
			if ($username ==$q1[0]) {
				
				// The current password matches the input from the oldpass field.
				
					// Password meets requirements
					if ($user1 == $user2) {
						//Passwords match, update the password in the database
						mysql_query("UPDATE tpo SET userID='$user1' where         userid='$username'") or die(mysql_error());
						echo "<script language=javascript>alert('UserID changed');</script>";
						redirect_to("tpo.php");
					}
					else {
						// The new passwords do not match
						echo "<script language=javascript>alert('UserID do not match');</script>";
					}
		
			}
	}
		?>

		
<?php include("includes/header.php"); ?>
<div id="main">
	<table id="structure">
	<tr>
	<td id="navigation">
	<a href="tpo.php">Back</a><br>
	<a href="tpologout.php">Log out</a>
	</td>
	<td id="page">
	<h2>Login</h2>
	<?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?>
	<form action="tpo_change_user.php" method="post">
	<table id="inner" cellpadding="10">
	
	<tr>
	<td>Current UserID</td>
	<td><input type=text name="userID" id="password" value=""></td>
	</tr>
	<tr>
	<td>Password</td>
	<td><input type=password name="oldpass" id="password" value=""></td>
	</tr>
	
	<tr>
	<td>New UserID</td>
	<td><input type=text name="user1" id="user1" value=""></td>
	</tr>
	
	<tr>
	<td>Repeat UserID</td>
	<td><input type=text name="user2" id="user2" value=""></td>
	</tr>
	
	<tr>
	<td><input type="submit" name="submit" value="Change UserID"></td>
	</tr>
	</table>
	</form>
	</td>
	</tr>
	</table>
	
</div>
<?php require("includes/footer.php");?>