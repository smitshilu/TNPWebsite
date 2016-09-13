<?php require_once("includes/tsession.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>



<?php

$cid=trim(mysql_prep($_POST['cid']));
$password=trim(mysql_prep($_POST['password']));
$hashed_password=sha1($password);
echo "<script language=javascript>alert('{$cid}')</script>";
echo "<script language=javascript>alert('{$hashed_password}')</script>";

$login_query=mysql_query("select userID from company where userID='{$cid}' and password='{$hashed_password}'");
if (mysql_num_rows($login_query) == 1) {
	
$found_user = mysql_fetch_array($login_query);
$_SESSION['sessionid3']=$found_user[0];
redirect_to("eligible.php");
}

else {
	echo "<script language=javascript>alert('Wrong username or password')</script>";
	// redirect_to("clogin.php");
}
?>