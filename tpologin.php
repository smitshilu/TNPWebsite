<?php require_once("includes/tsession.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php
	if(tpo_logged_in())
	{
		redirect_to("tpo.php");
	}
		 
?>
<?php

	if (isset($_POST['submit'])) 
	{
		$tpoid = trim(mysql_prep($_POST['tpoid']));
		$password = trim(mysql_prep($_POST['password']));
		$hashed_password = sha1($password);
		$query = "SELECT Userid ";
			$query .= " FROM tpo ";
			$query .= "WHERE Userid = '{$tpoid}' ";
			$query .= "AND password = '{$hashed_password}' ";
			$query .= "LIMIT 1";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			if (mysql_num_rows($result_set) == 1) {
				// username/password authenticated
				// and only 1 match
				$found_user = mysql_fetch_array($result_set);
				$_SESSION['sessionid1']=$found_user['Userid'];
				redirect_to("tpo.php");
			} else {
				// username/password combo was not found in the database
				$message = "Username/password combination incorrect.<br />
					Please make sure your caps lock key is off and try again.";
			}
	}
	else{
	if(isset($_GET['logout']) && ($_GET['logout']==1) )
	{
		$message= "You are now logged out";
	}
	$tpoid="";
	$password="";
	
	}
?>
<?php include("includes/header.php"); ?>
<div id="main">
	<table id="structure">
	<tr>
	<td id="navigation">
	<a href="index.php">Home</a>
	</td>
	<td id="page">
	<h2>Login</h2>
	<?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?>
	<form action="tpologin.php" method="post">
	<table id="inner" cellpadding="10">
	<tr>
	<td>TPOId</td>
	<td><input type=text name="tpoid" id="tpoid" value=""></td>
	</tr><tr>
	<td>Password</td>
	<td><input type=password name="password" id="password" value=""></td>
	</tr><tr>
	<td></td>
	<td><input class=buttons type="submit" name="submit" value="Login"></td>
	</tr>
	</table>
	</td>
	</tr>
	</table>
	
</div>
<?php require("includes/footer.php");?>