<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php confirm_tpr_logged_in();?>
<?php
	if(isset($_POST['submit']))
	{
		if(isset($_POST['yes']))
		{
			$yes=trim(mysql_prep($_POST['yes']));
			$student=trim(mysql_prep($_POST['student']));
			if($yes=="on")
			{
			    $query="UPDATE `student`.`users` SET  `Activated` =  '1' WHERE  `users`.`Userid` =  '$student'";
				$result = mysql_query($query);
				confirm_query($result);
				if($result)
				echo "<script language=javascript>alert('The Student is successfully Authenticated!');</script>";
			}
		}
		else
		{
			echo "<script language=javascript>alert('Please select the student!');</script>";
			$query="";
		}
	}
	
?>
<?php include("includes/header1.php");?>
<section class="middle">
	<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
                            <li><a class="sidelink" href="tpr.php">TPR Menu </a></li>
                            <li><a class="sidelink" href="tpologout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
				<hgroup><h2 class="welcome"><center>Security Deposits</center></h2></hgroup>		
						<?php
						$branch=$_SESSION['branch'];
						
						$query1="select branch_id from branch where branch_name='{$branch}'";
						$res=mysql_query($query1);
						confirm_query($res);
						$fetch=mysql_fetch_array($res);
						
						
						$query = "SELECT `Userid` FROM `users`
								  where `branch_id`= \"$fetch[0]\" and 
								  `Activated`=\"0\"";
						$result = mysql_query($query);
						confirm_query($result);
						echo "</br>";
						echo "<center><table border=2 cellpadding=\"6\">";
						echo "<tr>
								<th>Student Id</th>
								<th>Deposited??</th>
								</tr>";
						while($result_set = mysql_fetch_array($result))
						{
						echo "
							<tr>
							<form action='security.php' method='post'>
							<td id='student'>$result_set[0]<input type=\"hidden\" name=\"student\" value=\"$result_set[0]\"</td>
							<td>
							<input type=\"checkbox\" name=\"yes\" />
							<input type='submit' name='submit' value=\"go!\" />			
							</td>
							</form>
							</tr>
							";
						}
						echo "</table></center>";
						?>
	</section>
<?php include("includes/footer1.php");?>