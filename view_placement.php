<!Doctype html>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("Classes/PHPExcel.php");?>
<?php confirm_tpo_logged_in();?>
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
				<hgroup><h2 class="welcome"><center>Placements</center></h2></hgroup>
				<form action="edit_company.php" method='post'>
					<?php 	
						$query = "SELECT `Date`,`Name`,`Details`,`Criteria`,`Deadline`
							FROM `company`";
						$result = mysql_query($query);
						confirm_query($result);						
						echo "</br></br></br>";
						if(mysql_num_rows($result)==0)
						{
							echo "<center><h3>No placements!</h3></center>";
						}
						else
						{
							echo "<center><table border=2 cellpadding=\"6\">";
							echo "<tr>
								<th>Date</th>
								<th>Name</th>
								<th>Details</th>
								<th>Criteria</th>
								<th>Deadline</th>
								<th></th>
								</tr>";
							while($result_set = mysql_fetch_array($result))
							{
								echo "
								<tr>
								<td>$result_set[0]</td>
								<td>$result_set[1]</td>
								<td>$result_set[2]</td>
								<td>$result_set[3]</td>
								<td>$result_set[4]</td>
								<td><button type='submit' class='buttons' value='{$result_set[1]}' name='edit'>Edit</button></td>
								</tr>
								";
							}
							echo "</table></center>";
								
						}						
				?>
			</form>
	</section>
<?php include("includes/footer1.php");?>