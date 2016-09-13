<?php require_once("includes/session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>

<?php

	if (isset($_POST['submit'])) 
	{
	$userid = trim(mysql_prep($_POST['userid']));
	$password = trim(mysql_prep($_POST['password']));
	$hashed_password = sha1($password);
	
	$mail_query=mysql_query("select userid from users where userid='{$userid}' and email_verified=0");
	confirm_query($mail_query);
	if(mysql_num_rows($mail_query)==1)
	{
		$mail_fetch=mysql_fetch_array($mail_query);
		$_SESSION['temp_sessionid']=$mail_fetch['Userid'];
		redirect_to("mail.php");
	}
	
	// $query = "SELECT Userid ";
			// $query .= " FROM users ";
			// $query .= "WHERE Userid = '{$userid}' ";
			// $query .= "AND Hashed_password = '{$hashed_password}' ";
			// $query .= 
			// $query .= "LIMIT 1";
			$query = "SELECT `Userid` from `users` where `Userid`='{$userid}' and 
					`Hashed_password`='{$hashed_password}' and 
					`Activated`=\"1\" LIMIT 1";
 			$result_set = mysql_query($query);
			confirm_query($result_set);
			if (mysql_num_rows($result_set) == 1) {
				// username/password authenticated
				// and only 1 match
				$found_user = mysql_fetch_array($result_set);
				$_SESSION['sessionid']=$found_user['Userid'];
				redirect_to("student.php");
			} else {
				echo "<script language=javascript>alert('Something Went Wrong!');</script>";
				$message = "<b>Username/password combination incorrect.</b><br />
						<b>Also,Please make sure you have Paid your <font color=\"red\">Security Deposit!</font></b>";
			}
	}
	else{
	if(isset($_GET['logout']) && ($_GET['logout']==1) )
	{
		redirect_to("index.php");
	}
	$userid="";
	$password="";
	}
?>
<?php include("includes/header.php"); ?>
<div id="main">
	<table id="structure">
	<tr>
	<td id="navigation">
	<a href="content.php">Return to Home</a>
	<a href="reg_form.php">Register</a>
	</td>
	<td id="page">
	<h2>Login</h2>
	<?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?>
	<form action="login_form.php" method="post">
	<table id="inner" cellpadding="10">
	<tr>
	<td>Userid</td>
	<td><input type=email name="userid" id="userid" value=""></td>
	</tr><tr>
	<td>Password</td>
	<td><input type=password name="password" id="password" value=""></td>
	</tr><tr>
	<td></td>
	<td><input type="submit" name="submit" value="Login"></td>
	</tr>
	</table>
	</td>
	</tr>
	</table>
	
</div>
<?php require("includes/footer.php");?>