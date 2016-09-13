<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php
	$query = "select `Title`,`Content` from `news` order by date desc"; 
	$result_set = mysql_query($query);
	confirm_query($result_set);
?>	
<aside class="rightside">
                <article class="box">
                    <div class="boxhead">
                        TPO Updates
                    </div>
                    <div class="boxbody">
                        <ul class="rightlinks" style="list-style: disc">
						<marquee id="sli" scrollamount="2" scrolldelay="1" direction="up" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 2, 0);" height="370px">
							<?php while($result = mysql_fetch_array($result_set))
								{
									
									echo "
											<a href=\"news_detailed.php\" style=text-decoration:none;color:#a00500>
												<li>
													<img src='images/new.gif'> &nbsp; &nbsp; $result[0]
										  		</li>
											</a>
											<br>
										
										";
								}
							?>
						</marquee>
                        </ul>
							<p style="background-image: none; text-align: right;"><a class="readnews" href="news_detailed.php">
                                read more news</a></p>
                    </div>
                </article>
                <article class="box">
                   <!-- <div class="boxhead">
                        Placements
                    </div> -->
					<!--Congratulations to Placed Students -->
					
					
                  <!-- div class="boxbody">
                        <ul class="rightlinks" style="list-style: disc">
                        <p><center><b><font color="#a00500">Congratulations </br>to the Students</font></b></center></p></br>
						<marquee id="sli" scrollamount="2" scrolldelay="1" direction="up" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 2, 0);" height="370px">
							
							
						<?php /* 
							$query=mysql_query("SELECT company,count(userid) FROM `placed_students` WHERE 1 group by company");
							confirm_query($query);
							while($row = mysql_fetch_array($query))
							{
								echo $row[0]." - ".$row[1]."<br>";
							}
							*/
							?>		
							
							
							
							</marquee>
                        </ul>
						                    </div> -->
                </article>
            </aside>
        </section>
        <footer>
            <b><a class="ftags" href="index.php">Home</a>|<a class="ftags" href="http://www.charusat.ac.in">CHARUSAT
              </a>|<!-- <a class="ftags" href="">Statistics </a>|--> <a class="ftags" href="aboutus.php">
                    About Us </a>| <a class="ftags" href="contactus.php">Contact Us</a>
            <br />
            Copyright &copy; 2013-All Rights Reserved-T&P Cell,CHARUSAT.</br>
			<?php
			if(isset($i))
			{
				echo "Best viewed in chrome & firefox.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"developer.htm\">Developer Team</a>";
			}?>		
        </footer>
    </div>
</body>
</html>