<!Doctype html>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_c_logged_in();?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/company_menu.php"); ?>
	<section class="center">
			<hgroup>
			<h2 class="welcome">Eligible Students</h2>
			</hgroup>
				<p>Welcome <b><?php echo $_SESSION['sessionid3'];?></b></p>
				<form action="process.php" method="post">
				<p>Select the Academic Year:
						<select name="year">
						<option value="">Select...</option>
						<option value="2012">2012</option>
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
			
				</p>
				</br></br></br></br>
				<b>Courses:</b>
				
			<!-- ----------------Branch is fatched from Database ------------------------------------------------------------ -->
									
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
			</td>
			</tr>
				<br> <br>
				<input type="checkbox" id="10" onchange="textbox()" />10th Standard&nbsp;
				<input type="text" name="10th" id="10th" style='display:none'/>
			</br><input type="checkbox" value="12" onchange="textbox1()"/>12th Standard
				<input type="text" name="12th" id="12th" style='display:none'/>
				</br></br></br>
				
				Minimum CGPA:
				<select name="cgpa">
						<option value="">Select...</option>
						<option value="6">6</option>
						<option value="6.5">6.5</option>
						<option value="7">7</option>
						<option value="7.5">7.5</option>
						<option value="8">8</option>
						<option value="8.5">8.5</option>
						<option value="9">9</option>
				</select>
					</br></br></br></br></br></br>
		
			    <input type="submit" name="submit" class="buttons" style="border: none" value="Find it!"/>
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
</section>
<?php include("includes/c_footer.php");?>