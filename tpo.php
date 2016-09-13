<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
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
                            <li><a class="sidelink" href="index.php">Home </a></li>
                            <li><a class="sidelink" href="addcompany.php">Add/Rmv Placement </a></li>
                            <li><a class="sidelink" href="tpologout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
			<hgroup><h2 class="welcome">TPO Area</h2></hgroup>
						<p>Welcome to the TPO area <b><?php echo $_SESSION['sessionid1'];?></b></p>
						<ul>
						<!-- <li><a class="linktpo" href="applied.php">Interested Students</a></li> -->
						<!-- <li><a class="linktpo" href="alloc.php">Allocate Project Id</a></li> -->
						<li><a class="linktpo" href="expert.php">Add / Remove Expert Talk Details</a></li>
						<li><a class="linktpo" href="news.php">Add / Remove News</a></li>
						<li><a class="linktpo" href="tpo_c_applied.php">View Applied Students</a></li>
						<li><a class="linktpo" href="student_placed.php">Add Placed Stuents</a></li>
						<li><a class="linktpo" href="branches.php">Add / Remove Branches</a></li>
						<li><a class="linktpo" href="tpo_change_user.php">Change Username</a></li>
						<li><a class="linktpo" href="tpo_pass.php">Change Password</a></li>
						<li><a class="linktpo" href="view_placement.php">View Placement</a></li>
						</ul>
	</section>
<?php include("includes/footer1.php");?>