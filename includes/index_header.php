<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
							<?php
							if(isset($_SESSION['sessionid']))
							{
								echo"<li><a class=\"sidelink\" href=\"student.php\">Student Menu </a></li>";
							}
							else if(isset($_SESSION['sessionid3']))
							{
									echo"<li><a class=\"sidelink\" href=\"eligible.php\">Company Menu </a></li>";
							}
							else if(isset($_SESSION['sessionid1']))
							{
								echo"<li><a class=\"sidelink\" href=\"tpo.php\">TPO Menu </a></li>";
							}
							else if(isset($_SESSION['sessionid2']))
							{
								echo"<li><a class=\"sidelink\" href=\"tpr.php\">TPR Menu </a></li>";
							}
							else
							{
									
									echo"<li><a class=\"sidelink\" href=\"reg_form.php\">Register </a></li>";
							}
							?>
														
							<li><a class="sidelink" href="experttalk.php">Expert Talks </a></li>
                            <li><a class="sidelink" href="faqs.php">FAQs </a></li>
                            <?php
							if(isset($_SESSION["sessionid"]) || isset($_SESSION["sessionid1"]) || isset($_SESSION["sessionid2"]) || isset($_SESSION["sessionid3"]))
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
                <article class="box">
				<?php
				if(!(isset($_SESSION["sessionid"])) && !(isset($_SESSION["sessionid1"])) && !(isset($_SESSION["sessionid2"])) && !(isset($_SESSION["sessionid3"])))
				{	echo'
                    <div class="boxhead">
                        Login Area
                    </div>
                    <div class="boxbody">
                        <form action="login_process.php" method="post">
                        <label>
                            Username:</label>
                        <br />
                        <input type="email" name="userid" placeholder="Your Charusat E-mail Id"  style="width: 160px; padding-left:5px; height:20px;"  required=""/>
                        <br />
                        <br />
                        <label>
                            Password:</label>
                        <br />
                        <input type="password" name="password" placeholder="Enter Password"  style="width: 160px; padding-left:5px;  height:20px;"  required=""/>
                        <small><p style=text-align:right><a href="forgot.php" style=" text-decoration:none; color:#666; padding:5px 5px 5px 5px; margin-top:10px;">Forgot Password?</a></p></small>
                        <input type="submit" value="Submit" name="login" class="buttons" style="border: none;" /></br>
						Don\'t have an Account?</br>
						<a href="reg_form.php">Sign Up </a>Here!
                        </form>
                    </div>
					';
				}	?>
                </article>
                </aside>