<!DOCTYPE html>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/temp_session.php");?>
<?php include("includes/header1.php");?>
        <section class="middle">
            <?php include("includes/index_header.php");?>
		<section class="center">
					<hgroup><h2 class="welcome">Our Recruiters</h2></hgroup>
					<p style=font-size:14px>
					<?php 
					$query=mysql_query("select c_name from company_list where 1");
					$row=array();
					while($row=mysql_fetch_assoc($query))
					{
						echo $row['c_name']."<br>";
					}
					
					?>
					</p>			
					<p style=font-size:18px align="right">and many more...</p>
		</section>
<?php include("includes/footer1.php");?>