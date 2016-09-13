<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
						<?php
							if(tpo_logged_in())
							{
								echo "<li><a class=\"sidelink\" href=\"tpo.php\">TPO Menu </a></li>";
							}
							elseif(c_logged_in())
							{
								echo "<li><a class=\"sidelink\" href=\"eligible.php\">Company Menu </a></li>";
							}
							?>
                            <li style="border-bottom: 0px;"><a class="sidelink" href="logout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
			<hgroup><h2 class="welcome"><center>Interested Students</center></h2></hgroup>
				<?php 													
						$query = "SELECT * FROM `student_applied`"; 
						$result = mysql_query($query);
						confirm_query($result);
						$result_set = mysql_fetch_array($result);
						
						$result=mysql_query("select branch_name from branch where branch_id='{$result_set[3]}'");
						confirm_query($result);
						$fetch=mysql_fetch_array($result);
						echo "</br></br></br>";
						echo "<center><table border=2 cellpadding=\"6\">";
						echo "<tr>
								<th>Userid</th>
								<th>Branch</th>
								<th>Class</th>
								<th>Company</th>
								</tr>";
						while($result_set = mysql_fetch_array($result))
						{
						echo "
							<tr>
							<td>$result_set[0]</td>
							<td>$fetch[0]</td>
							<td>$result_set[1]</td>
							<td>$result_set[2]</td>
							</tr>
							";
						}
						echo "</table></center>";	
				?>
	</section>
<?php include("includes/footer1.php");?>