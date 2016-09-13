<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php confirm_tpo_logged_in();?>
<?php include("includes/header1.php"); ?>
<?php 
if(isset($_POST['submit']))
{	
	$company= trim(mysql_prep($_POST['company']));
	$_SESSION['company']=$company;
	redirect_to("tpo_student_select.php");
}
?>
<?php 
if(isset($_POST['submit']))
{
	
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
			<?php
 $get=mysql_query("SELECT `userID` FROM `company` where 1");
 confirm_query($get);
$option = '';
 while($row = mysql_fetch_assoc($get))
{
  $option .= '<option value = "'.$row['userID'].'">'.$row['userID'].'</option>';
}
?>
 <select name="company"> 
<?php echo $option; ?>
</select>
			
			
			
			<input type=submit class=buttons name=submit value=submit>
			
						
	</section>
	</form>
<?php include("includes/footer1.php");?>