<?php require_once("includes/tsession.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php

	if (isset($_POST['submit'])) 
	{
		$branch= trim(mysql_prep($_POST['branch']));
		$tprid = trim(mysql_prep($_POST['tprid']));
		$password = trim(mysql_prep($_POST['password']));
		$hashed_password = sha1($password);
		$result=mysql_query("SELECT branch_id from branch WHERE branch_name='{$branch}' ");
		confirm_query($result);
		if(mysql_num_rows($result)==1)
		{
		
		$fetch=mysql_fetch_array($result);
		
		$query = "SELECT Userid ";
			$query .= " FROM tpr ";
			$query .= "WHERE Userid = '{$tprid}' ";
			$query .= "AND password = '{$hashed_password}' ";
			$query .= "AND branch_id = '{$fetch[0]}'";
			$query .= "LIMIT 1";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			if (mysql_num_rows($result_set) == 1) {
				// username/password authenticated
				// and only 1 match
				$found_user = mysql_fetch_array($result_set);
				$_SESSION['sessionid2']=$found_user['Userid'];
				redirect_to("tpr.php");
			} else {
				// username/password combo was not found in the database
				
				$message = "Username/password combination incorrect.<br />
					Please make sure your caps lock key is off and try again.";
			}
		}
	}
	else{
	if(isset($_GET['logout']) && ($_GET['logout']==1) )
	{
		$message= "You are now logged out";
	}
	$tprid="";
	$password="";
	
	}
?>
<?php include("includes/header.php"); ?>
<div id="main">
	<form action="tprlogin.php" method="post">
	<table id="structure">
	<tr>
	<td id="navigation">
	<a href="index.php">Return to Home</a>
	</td>
	<td id="page">
	<h2>Login</h2>
	
	<?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?>
	
	
	<table id="inner" cellpadding="10">
	<tr>
	<td>Select Branch</td>
	<td>
										
		<?php

 $get=mysql_query("SELECT branch_name FROM branch ORDER BY branch_ID ASC");
$option = '';
 while($row = mysql_fetch_assoc($get))
{
  $option .= '<option value = "'.$row['branch_name'].'">'.$row['branch_name'].'</option>';
}
?>
 <select name="branch" id="branch"> 
<?php echo $option; ?>
</select>
</td>
		</tr>
		
		
	<tr>
	<td>TPRId</td>
	<td><input type=text name="tprid" id="tprid" value=""></td>
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