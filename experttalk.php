<!DOCTYPE html>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/temp_session.php");?>
<?php
	$query="select * from expert order by id desc";
	$result_set = mysql_query($query);
	confirm_query($result_set);
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
                            <li><a class="sidelink" href="index.php">Home </a></li>
                            <li><a class="sidelink" href="news_detailed.php">News Feeds </a></li>
                            <li><a class="sidelink" href="faqs.php">FAQs </a></li>
							<?php
							if(isset($_SESSION['sessionid']))
							{
								echo"<li style=\"border-bottom: 0px;\"><a class=\"sidelink\" href=\"logout.php\">Logout </a></li>";
							}
							else
							{
								echo "<li style=\"border-bottom: 0px;\"><a class=\"sidelink\" href=\"http://www.charusat.ac.in\">CHARUSAT </a></li>";
							}
							?>
                        </ul>
                    </div>
                </article>
			</aside>
		<section class="center">
					<hgroup><h2 class="welcome">Expert Talks</h2></hgroup>
					<?php while($result = mysql_fetch_array($result_set))
								{
									echo "
								    <h3 style=color:#a00500>$result[1]</h3>
									<p style=text-align:right;font-size:13px><b>$result[2]</b></p>
									<p>$result[3]</p>
									<p><b>Feedback From Expert</b></p>
									<p>$result[4]</p>
									<p><b>Feedback From Student</b></p>
									<p>$result[5]</p>
									";
								}
					?>
		</section>
<?php include("includes/footer1.php");?>