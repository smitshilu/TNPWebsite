<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_c_logged_in();
$id=$_SESSION['sessionid3'];
?>

<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/company_menu.php"); ?>
			<section class="center">
		<?php	echo "<hgroup><h2 class=\"welcome\">Welcome ".$id."</h2></hgroup>"; ?>
						
						<p><form action=company.php method=post>
						<input type=submit class=buttons name="eligible" value="Find Eligible Students" size=60 />
						</form><br>
						<form action=company_applied.php method=post>
						<input type=submit class=buttons name=resend_submit value="Student applied" />
						</form>
						
						 <b></b></p>
						
	</section>
<?php //require("includes/footer1.php");?>