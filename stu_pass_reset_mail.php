<?php 
require_once("includes/connection.php");
require_once("includes/temp_session.php");
require_once("includes/functions.php");
$id=$_SESSION['id'];
$random_hash = sha1(uniqid(rand(), true));


$query=mysql_query("UPDATE `users` SET `random_no`='{$random_hash}' WHERE Userid='{$id}'");
confirm_query($query);

$email_query=mysql_query("select * from tnp_emailid");
confirm_query($email_query);
$result=mysql_fetch_array($email_query);


	require_once("phpmailer/class.phpmailer.php");
	require_once("includes/connection.php");

	$query=mysql_query("select random_no from users where userid='{$id}'");
	confirm_query($query);
	if(mysql_num_rows($query)==1)
	{
		$result1=mysql_fetch_array($query);
	}
	$mail = new PHPMailer(); // create a new object
	$mail->IsSMTP(); // enable SMTP
	$mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
	$mail->SMTPAuth = true; // authentication enabled
	$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for GMail
	$mail->Host = "smtp.gmail.com";
	$mail->Port = 465; // or 587
	$mail->IsHTML(true);
	$mail->Username = $result[0];
	$mail->Password = $result[1];
	$mail->SetFrom("noreply_tnp@charusat.edu.in");
	$mail->Subject = "CSPIT-T&P Password Reset Mail";
	$mail->Body = "Here is your confirmation code to reset your password: ".$result1[0];

	$mail->AddAddress($id);
	if(!$mail->Send())
	{
		return "Mailer Error: " . $mail->ErrorInfo;
	}
	else
	{
		redirect_to("stu_pass_reset.php");
	}
?>