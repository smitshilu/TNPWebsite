<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php include("includes/header1.php"); ?>
<?php confirm_tpo_logged_in();?>
<?php

	if(isset($_POST['submit'])=="remove")
	{
	$bname=trim(mysql_prep($_POST['branch']));
	
	$query2="select branch_id from branch where branch_name='{$bname}'";
	$result2=mysql_query($query2);
	confirm_query($result2);
	$fetch=mysql_fetch_array($result2);
	
	$query="delete from branch where `branch_id`='{$fetch[0]}'";
	$result=mysql_query($query);
	confirm_query($result);
	echo "<script language=\"javascript\">alert('{$result}');</script>";

	}
	
	//$bname1=trim(mysql_prep($_POST['bname']));
	
	if(isset($_POST['submit']) == "add")
	{
		$bname1=trim(mysql_prep($_POST['bname']));
		
		$query1="INSERT INTO `branch`(`branch_id`, `branch_name`) VALUES (null,'{$bname1}')";
		$result1=mysql_query($query1);
		confirm_query($result1);
		echo "<script language=\"javascript\">alert('Successfully added');</script>";
		
		redirect_to("tpo.php");
	}
?>
<section class="middle">
<aside class="leftside">
                <article class="box">
                    <div class="boxhead">
                        Links
                    </div>
                    <div class="boxbody">
                        <ul class="midlist">
                            <li><a class="sidelink" href="tpo.php">TPO Area</a></li>
                            <li><a class="sidelink" href="tpologout.php">Logout </a></li>
                        </ul>
                    </div>
                </article>
	</aside>
	<aside class="leftside">
                <article class="box">
                  
                </article>
	</aside>
	<section class="center">
			<hgroup>
						<form action="branches.php" method="post">
						<h2>Remove Branch:</h2><br>
						 <?php
			 				$get=mysql_query("SELECT branch_name FROM branch ORDER BY branch_ID ASC");
							$option = '';
 							while($row = mysql_fetch_assoc($get))
							{
  								$option .= '<option value = "'.$row['branch_name'].'">'.$row['branch_name'].'</option>';
							}
						?>
 			<select name="branch"> 
		<?php echo $option; ?>
		</select><br><br>
		<input type="submit" name="submit" value="remove" class="buttons" style="border: none" /><br><br>
<br>			
</form>


<form action="branches.php" method="post">

<h2>Add Branch:</h2><h4>(Max 5 Characters of Branch code in capitals)</h4><br>				
				<input type="text" name="bname" placeholder="Branch Name"/><br><br>
				<input type="submit" name="submit" value="add"  class="buttons" style="border: none" maxlength="5" onclick="branches.php"/><br><br><br />
	</form>
	</hgroup>
	</section>
<?php include("includes/footer1.php");?>