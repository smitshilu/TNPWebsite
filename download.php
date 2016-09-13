<?php require_once("includes/csession.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php require("PHPExcel.php");?>
<?php confirm_logged_in();?>
<?php
					$object=new PHPExcel();
                    header("Content-type: application/vnd.ms-excel");
			        echo "<center><table border=2 cellpadding=\"6\">";
					echo "<tr>
							<th>Firstname</th>
							<th>Lastname</th>
							<th>Branch</th>
							<th>Gender</th>		
							<th>Mobileno</th>	
							<th>Email</th>
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
						<td>$result_set[5]</td>
						</tr>
						";
					}
					echo "</table></center>";
?>