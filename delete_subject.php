<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php
	if(intval($_GET["subj"])==0)
	{
			redirect_to("content.php");
	}
	
	$id=mysql_prep($_GET["subj"]);
	
	$query="delete from menu where subject_id={$id} limit 1";
	$result=mysql_query($query,$con);
	if(mysql_affected_rows()==1)
	{
		redirect_to("content.php");
	}
	else
	{
		echo "<p>Subject deletion failed</p>";
		echo "<p>".mysql_error()."</p>";
		echo "<a href=\"content.php\">Return to Main Page</a>";
	}

?>
<?php mysql_close($con);?>