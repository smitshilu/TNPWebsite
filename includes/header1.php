<html>
<head>
    <title>::T&P CEll::</title>
      <link rel="Stylesheet" type="text/css" href="stylesheets/css3.css" /> 
    <!--[if IE]>
    <script type="text/javascript" src="js/html5.js"></script>
<![endif]-->

  <?php $page=basename($_SERVER['PHP_SELF']); ?>
</head>
<body>
    <div class="main">
        <header>
            <div>
                <hgroup>
                   <!-- <h1 class="comp">
						<table><tr><td>
                        <img src="images/3.jpg"/></td><td></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;Training And Placement Cell</td></tr></table>
                    </h1> -->
					 <img src="images/tnp.jpg" /> 
					</hgroup>
            </div>
            <nav>
            <ul class="navigate">
           	<?php
				if($page=="index.php")
					{ echo '<li><a class="link" href="index.php" style="color:#ff0000;">Home </a></li>'; }
				else
					{ echo '<li><a class="link" href="index.php">Home </a></li>'; }
					
				if($page=="program.php")
                	{ echo '<li><a class="link" href="program.php" style="color:#ff0000;">Academics </a></li>'; }
				else
					{ echo '<li><a class="link" href="program.php">Academics </a></li>'; }
					
				if($page=="recruit.php")
                	{ echo '<li><a class="link" href="recruit.php" style=color:#ff0000;">Recruiters </a></li>'; }
				else
					{ echo '<li><a class="link" href="recruit.php">Recruiters </a></li>'; }
                
				if($page=="rules.php")
                	{ echo '<li><a class="link" href="rules.php" style="color:#ff0000;">Rules </a></li>'; }
				else
					{ echo '<li><a class="link" href="rules.php">Rules </a></li>'; }
					
				
               //<!--  <li><a class="link" href="divindex.html">Statistics </a></li> -->
			   if($page=="download_file.php")
					{ echo '<li><a class="link" href="download_file.php" style="color:#ff0000;">Downloads </a></li>'; }
				else
					{ echo '<li><a class="link" href="download_file.php">Downloads </a></li>'; }
			   
			   
			   if($page=="aboutus.php")
			   		{ echo '<li><a class="link" href="aboutus.php" style=color:#ff0000;">About Us </a></li>'; }
				else
					{ echo '<li><a class="link" href="aboutus.php">About Us </a></li>'; }
					
				if($page=="contactus.php")
			   		{ echo '<li><a class="link" href="contactus.php" style="color:#ff0000;">Contact Us</a> </li>'; }
				else
					{ echo '<li><a class="link" href="contactus.php">Contact Us</a> </li>'; }

			?>
			</ul>
			</nav>
        </header>