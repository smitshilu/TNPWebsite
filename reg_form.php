<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php
	$message="";
	if(isset($_POST['submit']))
	{
		$userid= trim(mysql_prep($_POST['userid']));
		$password = trim(mysql_prep($_POST['password1']));
		$password1= $_POST['password2'];
		
		$branch = trim(mysql_prep($_POST['branch']));
		$answer = trim(mysql_prep($_POST['answer']));
		$hashed_password = sha1($password);
		$random_hash = sha1(uniqid(rand(), true));
		
		if(empty($userid)||empty($password)||empty($branch)||empty($answer)||empty($_POST['6_letters_code']))
		{
				echo "<script language=javascript>alert('Please fill the required fields!');</script>";
				$message.= "\n Please fill the required fields. ";
		}
		if(strlen($password)<=7)
		{
			echo "<script language=javascript>alert('Password must be greater than 7 letters');</script>";
			$message.= "\n Password must be greater than 7 letters ";
			$password="";
			$password1="";
		}
		if($password!=$password1)
		{
			echo "<script language=javascript>alert('Password should be same');</script>";
			$message.= "\n Password should be same ";
			$password="";
			$password1="";
		}
		
	/*	if($userid!="^([a-zA-Z0-9_-]+)(@charusat.edu.in)$/i")
		{
			echo "<script language=javascript>alert('Please enter Charusat Email Address');</script>";
			$message.= "\n Please enter Charusat Email Address";
			$userid="";
			$password="";
		} */
	// email validation	
		$allowed = array('charusat.edu.in', 'ecchanga.ac.in');
		if (filter_var($userid, FILTER_VALIDATE_EMAIL))
		{
			$domain = array_pop(explode('@', $userid));
		
			if ( ! in_array($domain, $allowed))
			{
				echo "<script language=javascript>alert('Please enter Charusat Email Address');</script>";
				$message.= "\n Please enter Charusat Email Address";
				$userid="";
				$password="";
				$password1="";
			}
		
		}
		
		if(!empty($userid) && !empty($password) && !empty($branch) && !empty($answer) && !empty($_POST['6_letters_code']))
		{
			if(empty($_SESSION['6_letters_code'] ) || strcasecmp($_SESSION['6_letters_code'], $_POST['6_letters_code']) != 0)
			{
					$message.= "\n The captcha code does not match!";
					$userid="";
					$password="";
					$password1="";
					$branch="";
			}
		}
		if(empty($message))
		{
			$query1 = "SELECT branch_ID FROM branch WHERE branch_name='{$branch}'";
			$result_set = mysql_query($query1);
			confirm_query($result_set);
			if (mysql_num_rows($result_set) == 1 ) {
				// username/password authenticated
				// and only 1 match
				$q2 = mysql_fetch_array($result_set);
			}
			
			
			
					$query = "INSERT INTO users (
							Userid, Hashed_password ,Branch ,branch_id ,Answer,email_verified,random_no
						) VALUES (
							'{$userid}', '{$hashed_password}', '{$branch}', '{$q2[0]}', '{$answer}', 0, '{$random_hash}'
						)";
			$result = mysql_query($query);
			if ($result) {
				if(($mail=confirmation_mail($userid))==1)
				{
					echo "<script language=javascript>alert('Confirmation Mail has been sent to your email-ID')</script>";
				}
				else
				{
					echo "<script language=javascript>alert('{$mail}')</script>";
				}
				$_SESSION['temp_sessionid']=$userid;
				redirect_to("mail.php");
				$userid="";
				$password="";
				$password1="";
				$branch="";
					
			} else {
				$message = "The user could not be created.";
				$message .= "<br />" . mysql_error();
				$userid="";
				$password="";
				$branch="";
				$answer="";
				}
		}
	}
	else{
	$userid="";
	$password="";
	$branch="";
	$answer="";
	}
?>
<?php include("includes/header1.php"); ?>
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
                            <li><a class="sidelink" href="faq.php">FAQs </a></li>
                 <!--       <li style="border-bottom: 0px;"><a class="sidelink" href="divindex.html">CSS Hub</a></li>	-->
                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
			<hgroup>
			<h2 class="welcome">Registration</h2>
			</hgroup>
			<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
					
				<form action="reg_form.php" method="post">
					<table cellpadding="10">
						<tr>
						<td>Email</td>
						<td>&nbsp;<input type=email placeholder="10ce000@charusat.edu.in"size=30 name="userid" id="userid" value="<?php echo htmlentities($userid);?>"></td>
						</tr><tr>
						<td>Password</td>
						<td>&nbsp;<input type=password size=30 placeholder="minimum 8 characters" name="password1" id="password" value="<?php echo htmlentities($password);?>"></td>
						</tr><tr>
						<td>Repeat Password</td>
						<td>&nbsp;<input type=password size=30 name="password2" id="password" value="<?php echo htmlentities($password);?>"></td>
						</tr>	
						<tr>
						<td>Branch</td>
						<td>&nbsp;
<!-- ----------------Branch is fatched from Database ------------------------------------------------------------ -->
									
 <?php


 $get=mysql_query("SELECT branch_name FROM branch ORDER BY branch_ID ASC");
$option = '';
 while($row = mysql_fetch_assoc($get))
{
  $option .= '<option value = "'.$row['branch_name'].'">'.$row['branch_name'].'</option>';
}
?>
 <select name="branch"> 
<?php echo $option; ?>
</select>

<!-- ------------------------------------------------------------------------------------------------------------- -->
	 			<!--		</td>
						</tr>
						<tr><td></td></tr>
						<tr><td></td></tr>
						<tr><td></td></tr>  
						<tr><td></td></tr>
						<tr><td></td></tr>
						<tr><td></td></tr>   -->
						<tr>
						<td>Security Question</td>
						<td>&nbsp;What is the name of your favourite Teacher in CHARUSAT?</td>
						</tr>
						<tr>
						<td>Answer</td>
						<td>&nbsp;<input type=text size=30 name="answer" id="answer"></td>
						</tr>
						<tr></tr>
						<tr></tr>
						<tr>
						<td></td>
						<td>&nbsp;
						<img src="captcha_code_file.php?rand=<?php echo rand(); ?>" id='captchaimg' ><br>&nbsp;
						<label for='message'>Enter the code above here :</label><br>&nbsp;
						<input id="6_letters_code" name="6_letters_code" type="text" size=30><br>&nbsp;
						<small>Can't read the image? click <a href='javascript: refreshCaptcha();'>here</a> to refresh</small>&nbsp;
						</td>
						</tr>
						<tr>
						<td></td>
						<td>&nbsp;<input type="submit" name="submit" class="buttons" style="border: none" value="Register"></td>
						</tr>
					</table>
			    </form>
	</section>
<script language='JavaScript' type='text/javascript'>
function refreshCaptcha()
{
	var img = document.images['captchaimg'];
	img.src = img.src.substring(0,img.src.lastIndexOf("?"))+"?rand="+Math.random()*1000;
}
function validateEmail(email){
    return email.test(/^\"?[\w-_\.]*\"?@charusat\.edu\.in$/);        
}
</script>
<?php require("includes/footer1.php");?>