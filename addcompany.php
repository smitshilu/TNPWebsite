<!Doctype html>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php date_default_timezone_set('Asia/Kolkata');?>
<?php confirm_tpo_logged_in();?>
<?php
	$qry = "select `Name` from `company`";
	$res = mysql_query($qry);
	confirm_query($res);
?>
<?php
	if (isset($_POST['submit'])) 
	{
		$tenth=trim(mysql_prep($_POST['10th']));
		$twelth=trim(mysql_prep($_POST['12th']));
		$course=$_POST['course'];
		$branch=implode("','",$course);
		$userid=trim(mysql_prep($_POST['userid']));
		$pass=trim(mysql_prep($_POST['pass']));
		$pass2=trim(mysql_prep($_POST['pass2']));
		$hpass=sha1($pass);
		$emailid=trim(mysql_prep($_POST['emailid']));
		$date = trim(mysql_prep($_POST['date']));
		$name = trim(mysql_prep($_POST['name']));
		$details = trim(mysql_prep($_POST['details']));
		$criteria = trim(mysql_prep($_POST['criteria']));
		$deadline = trim(mysql_prep($_POST['deadline']));
		if(!empty($date) && !empty($name) && !empty($details) && !empty($criteria) && !empty($deadline) && !empty($userid) && !empty($pass))
		{
			if($pass==$pass2)
			{
			
			$query = "insert into `company` (`Date`,`Name`,`Details`,`Criteria`,`Deadline`,`userID`,`password`,`email`) values 
						('{$date}','{$name}','{$details}','{$criteria}','{$deadline}','{$userid}', '{$hpass}','{$emailid}')";
						
			$result_set = mysql_query($query);
			confirm_query($result_set);
			if($result_set)
				{
					
				/*//	if(c_confirmation_mail($emailid, $userid, $pass))
					//{
						//echo "<script language=javascript>alert('Mail has been sent to {$emailid}')</script>";
					//}
					else 
					{
						echo "Error in sending the mail";
						$_SESSION['id']['email']=$emailid;
						$_SESSION['id']['userid']=$userid;
						$_SESSION['id']['pass']=$pass;
						redirect_to("resend.php");
					} */
				
					$create_query="create table `{$userid}` like student_details";
					$create_result=mysql_query($create_query);
					confirm_query($create_result);
					if($create_result)
					{
						
						$truncate_result=mysql_query("delete from `{$userid}` where 1");
						confirm_query($truncate_result);
						$i=0;
						while($course[$i])
						{
						$insert_query="INSERT INTO `{$userid}` select * from `student_details` where branch='{$course[$i]}' and CGPA>='{$criteria}' and tenthresult>='{$tenth}' and twelthresult>='{$twelth}'";
						$insert_result=mysql_query($insert_query);
						confirm_query($insert_result);
						$i=$i+1;
						}
						if($insert_result)
						{
							$alter_result=mysql_query("alter table `{$userid}` add column applied int(2) not null default 0");
							confirm_query($alter_result);
							$insert_applied_result=mysql_query("update `{$userid}` set applied=0");
							confirm_query($insert_applied_result);
						echo "<script language=javascript>alert('Success!')</script>";
						redirect_to("tpo.php");
						}
						
					}
					else
					{
						echo "<script language=\"javascript\">alert('Sorry, Database problem! Try again later');</script>";
						$message="Try again".mysql_error();
						$date="";
						$name="";
						$details="";
						$criteria="";
						$deadline="";
						$delete="";
					}
				}
			
				else
				{
					echo "<script language=\"javascript\">alert('Password should match!');</script>";
					
				}
			}	
		}		
			else{
				echo "<script language=javascript>alert('Some fields are empty!!');</script>";
				$pass="";
				$pass2="";
			}
	}
		
	else if(isset($_POST['deletion']))
	{
		$delete = trim(mysql_prep($_POST['delete']));
		$query = "delete from `company` where `Name`='$delete'"; 
 		$result_set2 = mysql_query($query);
		$query2 = "delete from `company_login` where `userID`='$delete'"; 
		$result_set3 = mysql_query($query2);
		confirm_query($result_set2);
		confirm_query($result_set3);
		if($result_set2 && $result_set3)
			{
				echo "<script language=javascript>alert('Company Successfully deleted!');</script>";
				$date="";
				$name="";
				$details="";
				$criteria="";
				$deadline="";
				$delete="";
			}
			else
			{
				$message="Try again".mysql_error();
			}
	}
	else
	{
		$date="";
		$name="";
		$details="";
		$criteria="";
		$deadline="";
		$delete="";
	}
?>
<html>
<head>
    <title>::T&P CEll::</title>
    <link rel="Stylesheet" type="text/css" href="stylesheets/css3.css" />
    <!--[if IE]>
    <script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
	<link rel="stylesheet" type="text/css" href="stylesheets/jquery.ui.all.css">
	<script src="javascripts/jquery-1.9.0.js"></script>
	<script src="javascripts/jquery.ui.core.js"></script>
	<script src="javascripts/jquery.ui.widget.js"></script>
	<script src="javascripts/jquery.ui.datepicker.js"></script>
	<script>
	$(function() {
		$( ".datepicker" ).datepicker({
			changeMonth: true,
			changeYear: true
		});
	});
	</script>
</head>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
                            <li><a class="sidelink" href="tpo.php">TPO Area </a></li>
                            <li><a class="sidelink" href="tpologout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>	
	<section class="center">
			<hgroup><h2 class="welcome">New Company</h2></hgroup>
						<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
						<form action="addcompany.php" method="post">
							<table>
							<tr>
							<td>Date:<input type="text" name="date" class="datepicker"></td></tr><tr>
							<td>Name:<input type="text" name="name" id="name" value=""></td></tr><tr>
							<td>Details:</br>
							   <textarea id="details" name="details" rows="10" cols="40">
							   </textarea></td></tr><tr>
							<td>Eligibility Criteria:<input type="number" name="criteria" value=""></td></tr><tr>
							<td>Deadline:<input type="text" name="deadline" class="datepicker" value=""></td></tr>
							<tr><td>Select the Branches to be applied:
<!-- ------------------------------------------------------------------------------------------------------------- -->							 
							 <?php
 $get=mysql_query("SELECT branch_name FROM branch ORDER BY branch_ID ASC");
$option = '';
 while($row = mysql_fetch_assoc($get))
{
  $option .= '<br> <input type="checkbox" name="course[]" value = "'.$row['branch_name'].'">'.$row['branch_name'];
}
?>
 
			<?php echo $option; ?>


<!-- ------------------------------------------------------------------------------------------------------------- -->
							</td></tr>
							<tr><td>
							<br> <br>
				<input type="checkbox" id="10" onchange="textbox()" />10th Standard&nbsp;
				<input type="number" name="10th" id="10th" style='display:none'/>
			</br><input type="checkbox" value="12" onchange="textbox1()"/>12th Standard
				<input type="number" name="12th" id="12th" style='display:none'/>
				</br></br></br>
							</td></tr>
							<tr>
							<td>UserID:<input type="text" name="userid" value=""></td></tr>
							<tr><td>Password:<input type=password name="pass" value=""></td></tr>
							<tr><td>Repeat Password:<input type=password name="pass2" value=""></td></tr>
							<td>EmailID:<input type="email" name="emailid" value=""></td></tr>
							</table></br></br></br></br>
							<p><input type="submit" name="submit" class="buttons" style="border: none" value="submit"></p>
							</form>
							<form action="addcompany.php" method="post">
							<hgroup><h3 class="welcome">Delete a Placement Company</h3></hgroup>
							Select the company here:
							<?php
							echo "<select name=\"delete\">";
							echo "<option value=''>Select...</option>";
							while($rest = mysql_fetch_array($res))
								{
									echo "<option value='$rest[0]'>$rest[0]</option>";
								}
								echo "</select>";
							?></br></br></br>
							<p><input type="submit" name="deletion" class="buttons" style="border: none" value="Delete"></p>
							</form>
	</section>
	
	<script language='JavaScript' type='text/javascript'>
function textbox()
{
	document.getElementById('10th').style.display = 'block';
}
function textbox1()
{
	document.getElementById('12th').style.display = 'block';
}
</script>
	
<?php include("includes/footer1.php");?>