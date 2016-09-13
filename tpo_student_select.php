<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php confirm_tpo_logged_in();?>
<?php include("includes/header1.php"); ?>
<?php 
	$company=$_SESSION['company'];
?>
<?php 
if(isset($_POST['submit']))
{
	$user=$_POST['course'];
	$userID=implode("','",$user);
	$i=0;
	while($user[$i])
	{
		$insert_placed_query=mysql_query("INSERT INTO `placed_students`(`userID`, `company`) VALUES ('$user[$i]','$company')");
		confirm_query($insert_placed_query);
		$i++;
	}
	if($i!=0)
	{
		echo "<script language=javascript>alert('Operation Succesfully done!')</script>";
		redirect_to("student_placed.php");
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
                        	<li><a class="sidelink" href="tpo.php">TPO Area </a></li>
                            <li><a class="sidelink" href="index.php">Home </a></li>
                            <li><a class="sidelink" href="addcompany.php">Add/Rmv Placement </a></li>
                            <li><a class="sidelink" href="tpologout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<form method=post>
	<section class="center">
			<hgroup><h2 class="welcome">Student placed</h2></hgroup>
<!-- ------------------------------------------------------------------------------------------------------------- -->							 
<?php
 $get=mysql_query("SELECT userID FROM `{$company}` where applied=1");
$option = '';
 while($row = mysql_fetch_assoc($get))
{
  $option .= '<br> <input type="checkbox" name="course[]" value = "'.$row['userID'].'">'.$row['userID'];
}
?>
 
			<?php echo $option; ?>


<!-- ------------------------------------------------------------------------------------------------------------- -->
			
			
			
			<input type=submit class=buttons name=submit value=submit>
			
						
	</section>
	</form>
<?php include("includes/footer1.php");?>