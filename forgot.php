<!DOCTYPE html>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/temp_session.php")?>
<?php require_once("includes/functions.php");?>

<?php
	$message="";
	if(isset($_POST['submit']))
	{
		
		$userid = trim(mysql_prep($_POST['userid']));
		$ans = trim(mysql_prep($_POST['ans']));
	 	$query = "select `Answer` from users where `Userid`='$userid'";
	 	$result_set = mysql_query($query);
	 	confirm_query($result_set);
		$res = mysql_fetch_array($result_set);
		if($res)
		{
			if(($res[0])==($ans))
			{
				$_SESSION['id']=$userid;
				redirect_to("stu_pass_reset_mail.php");
			}
			else
			{
				echo "<script language=javascript>alert('Your Answer is Incorrect!Try again.');</script>";
				$message="Your Answer is Incorrect";
			}
		}
		else
		{
			$message="Username Incorrect";
			$message .= "<br />" . mysql_error();
		}
	}	
		//$users = implode("','",$res);
?>
<?php include("includes/header1.php");?>
        <section class="middle">
            <aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
                            <li><a class="sidelink" href="index.php">Home </a></li>
                            <li><a class="sidelink" href="www.charusat.ac.in">CHARUSAT </a></li>
                            <li><a class="sidelink" href="news_detailed.php">News Feeds </a></li>
							<li><a class="sidelink" href="experttalk.php">Expert Talks </a></li>
                            <li style="border-bottom: 0px;"><a class="sidelink" href="faq.php">FAQs </a></li>
                        </ul>
                    </div>
                </article>
				<article class="box">
                    <div class="boxhead">
                        Login Area
                    </div>
                    <div class="boxbody">
                        <form action="login_process.php" method="post">
                        <label>
                            Username:</label>
                        <br />
                        <input type="text" name="userid" placeholder="Your Username"  style="width: 150px;" class="special" required=""/>
                        <br />
                        <br />
                        <label>
                            Password:</label>
                        <br />
                        <input type="password" name="password" placeholder="Enter Password"  style="width: 150px;" class="special" required=""/>
                        <p style=text-align:right><a href="forgot.php">Forgot Password?</a></p>
                        <input type="submit" value="Submit" name="login" class="buttons" style="border: none" /></br>
						Don't have an Account?</br>
						<a href="reg_form.php">Sign Up </a>Here!
                        </form>
                    </div>
                </article>
            </aside>
		<section class="center">
					<hgroup><h2 class="welcome">Reset Password</h2></hgroup>
					<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
					
					<form action="forgot.php" method="post">
					<table cellpadding="10">
						<tr>
						<td>Enter Your UserID</td>
						<td>&nbsp;<input type=email name="userid" id="userid" size="30px"></td>
						</tr><tr>
						<td>Your Answer to Security Question</td>
						<td>&nbsp;<input type=text name="ans" id="ans" size="30px"></td>
						</tr>	
						<tr>
						<tr>
						<td></td>
						<td>&nbsp;<input type="submit" name="submit" class="buttons" style="border: none"></td>
						</tr>
					</table>
			    </form>
		</section>
<?php include("includes/footer1.php");?>