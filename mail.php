<!Doctype HTML>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php include("includes/header1.php"); 
$id=$_SESSION['temp_sessionid'];
?>

<?php 

$query=mysql_query("select userID from users where userid='{$id}' and email_verified=1");
confirm_query($query);
if(mysql_num_rows($query)==1)
{
	redirect_to("student.php");
}	
else {

if(isset($_POST['submit']))
{
	$code= trim(mysql_prep($_POST['code']));
	
	$confirmation_query=mysql_query("select userID from users where userid='{$id}' and random_no='{$code}'");
	confirm_query($confirmation_query);
	$x=mysql_fetch_array($confirmation_query);
		
	if(mysql_num_rows($confirmation_query)==1)
	{
		$update_query=mysql_query("UPDATE `users` SET `email_verified`=1,`random_no`=NULL WHERE userID='{$id}'");
		confirm_query($update_query);
		
		echo "<script language=javascript>alert('Welcome!!')</script>";
		redirect_to("login_process.php");
	}
	

}
if(isset($_POST['resend_submit']))
{
			if(($mail=confirmation_mail($id))==1)
				{
					echo "<script language=javascript>alert('Confirmation Mail has been sent to your email-ID')</script>";
				}
				else
				{
					echo "<script language=javascript>alert('{$mail}')</script>";
				}
}
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
			<hgroup><h2 class="welcome">Enter Your confirmation Code</h2></hgroup>
						<h3>A confirmation code has been sent to your e-mail ID.</h3>
						<p><form action=mail.php method=post>
						<input type=text name=code />
						<input type=submit class=buttons name=submit value="Confirm" size=60 />
						</form><br>
						<form action=mail.php method=post>
						<input type=submit class=buttons name=resend_submit value="Resend Confirmation Code" />
						</form>
						
						 <b></b></p>
						
	</section>
<?php include("includes/footer1.php");?>