<?php require_once("includes/csession.php");?>
<?php require_once("includes/functions.php");?>
<?php
	session_destroy();
	redirect_to("clogin.php");
?>