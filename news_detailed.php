<!DOCTYPE html>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/temp_session.php");?>
<?php
		$query = "select * from `news` order by date desc"; 	
		$result_set = mysql_query($query);
		confirm_query($result_set);
?>
<?php include("includes/header1.php");?>
        <section class="middle">
			<?php include("includes/index_header.php");?>
		<section class="center">
					<hgroup><h2 class="welcome">News Feeds</h2></hgroup>
					<?php while($result = mysql_fetch_array($result_set))
								{
									echo "
									
									<p style=color:#a00500><b>$result[0]</b></p>
										  <p> ".$result[1]."</p></br>
										  
										  <small><p style=text-align:right>Posted on ".date('D, d M Y h:m:s', strtotime ($result[3]))."</p></small>
										  
										  <hr>
										";
								}
					?>
		</section>
<?php include("includes/footer1.php");?>