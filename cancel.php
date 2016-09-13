<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php date_default_timezone_set('Asia/Kolkata');
$time=date_default_timezone_get();
confirm_logged_in();?>

<?php 
	$id=$_SESSION['sessionid'];
	$company=array();
	$temp_company=array();
	$temp_deadline=array();
	$deadline=array();
	$name;
	$d=0;
	$i=0;
foreach($_SESSION[$id]['company'] as $name)
{
      		$temp_company[$i]=$name;
      		$i++;
}
foreach($_SESSION[$id]['deadline'] as $name)
{
	$temp_deadline[$d]=$name;
	$d++;
}
	$j=0;
	$k=0;
	
	$company_result=mysql_query("select `userid`,`date` from `company`");
	confirm_query($company_result);
	while($row = mysql_fetch_array($company_result))
	{
		if(getDays($time,$row[1])>0){
			$temp_company[]=$row[0];
			$temp_deadline[]=(int)getDays($time, $row[1]);
		}
	}
	
	while($j<$i)
	{
		$eligible_query=mysql_query("SELECT `userID` FRom `{$temp_company[$j]}` where userID='{$id}' and applied=1");
		confirm_query($eligible_query);
		$temp=mysql_fetch_array($eligible_query);
		if (mysql_num_rows($eligible_query)==1)
		{
			$company[$k]=$temp_company[$j];
			$deadline[$k]=$temp_deadline[$j];
			$j++;
			$k++;
			continue;
		}
		$j++;
	}
	echo "<script language=javascript></script>";
//submit 
$m=0;
while($k!=$m)
{
	if(isset($_POST[$company[$m]]))
	{
		$cancel_update=mysql_query("update `{$company[$m]}` set `applied`=0 where userid='{$id}'");
		confirm_query($cancel_update);
	}
	$m++;
}
?>

<html>
<head>
    <title>::T&P CEll::</title>
	    <link rel="Stylesheet" type="text/css" href="stylesheets/css3.css" />
    <script type="text/javascript" src="js/html5.js"></script>
    <script type="text/javascript" src="jquery-1.9.1.js">
</script>
<script>
$(document).ready(function(){
	$(".c1").click(function(){
		$("input").toggle(500);
		$("h3").toggle(500);
	});
});
</script>


	<link rel="stylesheet" type="text/css" href="stylesheets/jquery.ui.all.css">
	<script src="javascripts/jquery-1.9.0.js"></script>
	<script src="javascripts/jquery.ui.core.js"></script>
	<script src="javascripts/jquery.min.js"></script>
</head>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
						<p>Welcome <b><font color="red"><?php echo $_SESSION['sessionid'];?></font></b></p>
						<hgroup><h3 class="welcome">Applied Companies</h3></hgroup>
						<form action="cancel.php" method=post>
						<table border=0><br>
						<?php
						$m=0;
						while($k!=$m)
						{ 
							
							echo "<tr>";
							echo "<td><input class=buttons class=c1 value=Cancel type=submit name=".$company[$m]."></td>";
						echo "<td><h3 class=c1>".$company[$m]."   </h3></td>";
						echo "<td> -".$deadline[$m]."</td>";
						$m++;
						echo "</tr>";
						}
						if($m==0)
						{
							echo"<h3>You haven't applied for any company";
						}
?>
						</table>
						</form>
	</section>
	

<?php include("includes/footer1.php");?>