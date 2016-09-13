<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php

	session_destroy();
	redirect_to("login_process.php?logout=1");
?>