<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_tpo_logged_in();?>
<?php
if(isset($_POST['submit'])) 
	{
			$year = mysql_prep($_POST['year']);
			$branch = mysql_prep($_POST['branch']);
			$project_id = mysql_prep($_POST['project_id']);
			$user_id = mysql_prep($_POST['user_id']);
			$q="select * from `training` where `Userid`='$user_id'";
			$r = mysql_query($q);
			confirm_query($r);
			$result_set=mysql_fetch_array($r);
			if(!empty($result_set))
			{
					$final="PRJ/".$year."/".$branch."/".$project_id;
					$query = "UPDATE `training` SET `Project_id`='{$final}' WHERE `Userid`='$user_id'";
					$result_set = mysql_query($query);
					confirm_query($result_set);
					if($result_set)
					{
						echo "<script language=javascript>alert('Project Id Successfully Allocated!');</script>";
					}
					else
					{
						$message="Try again".mysql_error();
					}
			}
			else
			{
					echo "<script language=javascript>alert('The Student has not yet filled his/her Training Details!');</script>";
			}
	}
?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
                            <li><a class="sidelink" href="tpo.php">TPO Menu </a></li>
                            <li><a class="sidelink" href="tpologout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
			<hgroup><h2 class="welcome">Project Id Allocation</h2></hgroup>
						<?php if (!empty($message)) {echo "<p>" . $message . "</p>";} ?>
						<form action="alloc.php" method="post" name="form">
						<table cellpadding="12" cellspacing="10">
						<tr>
						<th></th>
						<th>Year</th>
						<th>Branch</th>
						<th>ID</th>
						</tr>
						<tr>
						<td>PRJ</td>
						<td>
						<select name="year">
						<option value="">Select...</option>
						<option value="2013">2013</option>
						<option value="2014">2014</option>
						<option value="2015">2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
						<option value="2021">2021</option>
						<option value="2022">2022</option>
						<option value="2023">2023</option>					
						</select>
						</td>
						<td>
						 <?php

 $get=mysql_query("SELECT branch_name FROM branch ORDER BY branch_ID ASC");
$option = '';
 while($row = mysql_fetch_assoc($get))
{
  $option .= '<option value = "'.$row['branch_name'].'">'.$row['branch_name'].'</option>';
}
?>
 <select name="branch" id="branch" onchange="show()"> 
<?php echo $option; ?>
</select>

						</td>
						<td><input type="text" name="project_id"></td>
						</tr>
						<tr><td></td></tr><tr>
						<tr><th colspan="4">TO</th></tr>
						<tr><td></td><td></td>
						<td>
						<div id = "f1" style="display:none">
							<form name= "form1">
							<?php	
								
							
								$qry="select `Userid` from `student_details` where `Branch`='CE'";
								$rst = mysql_query($qry);
								confirm_query($rst);	
								echo "<select id=\"branch\" name=\"user_id\" onchange=\"show()\">";
								
								$query1 = "SELECT branch_ID FROM branch WHERE branch_name='{$branch}'";
								$result_set = mysql_query($query1);
								confirm_query($result_set);
								if (mysql_num_rows($result_set) == 1 ) {
									// username/password authenticated
									// and only 1 match
									$q2 = mysql_fetch_array($result_set);
								}
								
								echo "<script language=javascript>alert('{$q2[0]}');</script>";
								
								
								echo "<option value=''>Select...</option>";
								while($res = mysql_fetch_array($rst))
								{
									echo "<option value='$res[0]'>$res[0]</option>";
								}
								echo "</select>";
							?>
							</form>
						</div>
						
						<div id = "f2" style="display:none">
							<form name= "form2">
							<?php					
								$qry="select `Userid` from `student_details` where `Branch`='IT'";
								$rst = mysql_query($qry);
								confirm_query($rst);	
								echo "<select id=\"branch\" name=\"user_id\" onchange=\"show()\">";
								echo "<option value=''>Select...</option>";
								while($res = mysql_fetch_array($rst))
								{
									echo "<option value='$res[0]'>$res[0]</option>";
								}
								echo "</select>";
							?>
							</form>
						</div>

						<div id = "f3" style="display:none">
							<form name= "form3">
							<?php					
								$qry="select `Userid` from `student_details` where `Branch`='EC'";
								$rst = mysql_query($qry);
								confirm_query($rst);	
								echo "<select id=\"branch\" name=\"user_id\" onchange=\"show()\">";
								echo "<option value=''>Select...</option>";
								while($res = mysql_fetch_array($rst))
								{
									echo "<option value='$res[0]'>$res[0]</option>";
								}
								echo "</select>";
							?>
							</form>
						</div>
						</td><td></td>
						</tr>
						</table>
						</br></br></br></br>
						<p><center><input type="submit" name="submit" class="buttons" style="border: none" value="Allocate"/></center></p>
						</form>
	</section>
<script language='JavaScript' type='text/javascript' >
function show(){
var selopt = document.getElementById("branch").value;
if (selopt == "CE") {
document.getElementById("f1").style.display="block";
document.getElementById("f2").style.display="none";
document.getElementById("f3").style.display="none";
}
if (selopt == "IT") {
document.getElementById("f2").style.display="block";
document.getElementById("f1").style.display="none";
document.getElementById("f3").style.display="none";
}
if (selopt == "EC") {
document.getElementById("f3").style.display="block";
document.getElementById("f1").style.display="none";
document.getElementById("f2").style.display="none";
}
}
</script>
<?php include("includes/footer1.php");?>