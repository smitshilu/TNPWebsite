<!Doctype HTML>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php include("includes/header1.php"); 
?>

<?php 


if(isset($_POST['submit']))
{
	$id=$_SESSION['id'];
	$code= trim(mysql_prep($_POST['code']));
	$pass1= trim(mysql_prep($_POST['pass1']));
	$pass2= trim(mysql_prep($_POST['pass2']));
	$hashed_pass=sha1($pass1);
	
	if($pass1==$pass2)
	{
		if(strlen($pass1)>=8)
		{
	$confirmation_query=mysql_query("update users set Hashed_password='{$hashed_pass}',random_no=null where userid='{$id}'");
	confirm_query($confirmation_query);
		redirect_to("login_process.php");
		}
		else
		{
			echo "<script language=javascript>alert('Too small Password')</script>";
		$pass1="";
		$pass2="";	
	}
	}
	else 
	{
		echo "<script language=javascript>alert('Password should match')</script>";
		$pass1="";
		$pass2="";
	}
	
}
if(isset($_POST['resend_submit']))
{
			redirect_to("stu_pass_reset_mail.php");
}

?>

<section class="middle">
	<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
                            <li><a class="sidelink" href="index.php">Home </a></li>
                            <li><a class="sidelink" href="logout.php">Logout </a></li>

                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
	<table>
			<hgroup><h2 class="welcome">Enter Your confirmation Code</h2></hgroup>
						<h3>A confirmation code has been sent to your e-mail ID.</h3>
						<p><form action=stu_pass_reset.php method=post>
						<tr>
						<td>Confirmation Code:</td>
						<td><input type=text name=code /></td>
						</tr>
						<tr>
						<td>Password:</td>
						<td><input type=password name=pass1 /></td>
						</tr>
						<tr>
						<td>Repeat Password:</td>
						<td><input type=password name=pass2 /></td>
						</tr>
						<tr></tr>
						<tr>
						<td>
						<input type=submit class=buttons name=submit value="Confirm" size=60 /></td>
						</tr>
						<tr></tr>
						</form>
						<form action=mail.php method=post>
						<tr>
						<td><input type=submit class=buttons name=resend_submit value="Resend Confirmation Code" /></td>
						</tr>
						</form>
						</table>
						 <b></b></p>
						
	</section>
<?php include("includes/footer1.php");?>