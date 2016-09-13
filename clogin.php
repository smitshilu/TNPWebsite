<?php require_once("includes/tsession.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php if(c_logged_in())
	{
		redirect_to("eligible.php");
	}?>
<?php include("includes/header.php"); ?>
<div id="main">
<form action="a.php" method="post">
	<table id="structure">
	<tr>
	<td id="navigation">
	<a href="index.php">Home</a>
	</td>
	<td id="page">
	<h2>Login</h2>
	<?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?>
	<table id="inner" cellpadding="10">
	<tr>
	<td>CompanyId</td>
	<td><input type=text name="cid" id="cid" value=""></td>
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
	</form>
	
</div>
<?php require("includes/footer.php");?>