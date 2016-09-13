<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php
		if(isset($_POST["login"]))
		{
			$userid = trim(mysql_prep($_POST['userid']));
			$password = trim(mysql_prep($_POST['password']));
			$hashed_password = sha1($password);
//Check for email activation	
		$mail_query=mysql_query("select userid from users where userid='{$userid}' and email_verified=0");
		confirm_query($mail_query);
		if(mysql_num_rows($mail_query)==1)
		{
			
			$mail_fetch=mysql_fetch_array($mail_query);
			$_SESSION['temp_sessionid']=$userid;
			redirect_to("mail.php");
		}
			
			$query = "SELECT `Userid`,`activated` from `users` where `Userid`='{$userid}' and 
					`Hashed_password`='{$hashed_password}' LIMIT 1";
 			$result_set = mysql_query($query);
			confirm_query($result_set);
			if (mysql_num_rows($result_set) == 1) {
				// username/password authenticated
				// and only 1 match
				
				//Check for email activation
				$mail_query=mysql_query("select userid from users where userid='{$userid}' and email_verified=0");
				confirm_query($mail_query);
				if(mysql_num_rows($mail_query)==1)
				{
						
					$mail_fetch=mysql_fetch_array($mail_query);
					$_SESSION['temp_sessionid']=$userid;
					redirect_to("mail.php");
					
				}
				
				$found_user = mysql_fetch_array($result_set);
				if($found_user['activated']==0)
				{
					$message = "<b>
					<b>Please make sure you have Paid your <font color=\"red\">Security Deposit!</font></b><br>
					<h3>If you have paid security diposit then kindly wait till TPR allow you on website.</h3>";
					
				}
				else
				{
					if(!isset($_SESSION['sessionid']))
					{
						$_SESSION['sessionid']=$found_user['Userid'];
					}
					else
					{
						echo "<Script language=javascript>alert('you are logged in at another place')";
						redirect_to("index.php");
					}
					if($_SESSION['sessionid']=="tpo")
					{
						redirect_to("tpo.php");
					}
					else if($_SESSION['sessionid']=="company")
					{
						redirect_to("eligible.php");	
					}
					else
					{
						redirect_to("student.php");
					}
				}
			} 
			else {
				
				
				$message = "<b>Username/password combination incorrect.</b><br />";
				}
		}	
		if(isset($_GET['logout']) && ($_GET['logout']==1) )
		{
			redirect_to("index.php");
		}
?>
<?php include("includes/header1.php"); ?>
<section class="middle">
			<?php include("includes/index_header.php"); ?>
			<section class="center">
				</br></br>
				<?php if (!empty($message)) {echo "<p style=font-size:20px>" . $message . "</p>";} ?>
			</section>
<?php require("includes/footer1.php");?>