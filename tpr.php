<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_tpr_logged_in();?>
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
                            <li><a class="sidelink" href="tprlogout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<section class="center">
			<hgroup><h2 class="welcome">TPR Area</h2></hgroup>
						<p>Welcome to the TPR area <b><?php echo $_SESSION['sessionid2'];?></b></p>
						<ul>
						<li><a class="linktpo" href="security.php">Security Deposit Mangament</a></li>
						<li><a class="linktpo" href="tpr_pass.php">Change Password</a></li>
						</ul>
	</section>
<?php include("includes/footer1.php");?>