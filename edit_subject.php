<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php include_once("includes/form_functions.php");?>
<?php
		if(intval($_GET["subj"])==0)
		{
			redirect_to("content.php");
		}
		if(isset($_POST["submit"]))
		{
			$result=validate();
			if(empty($result))
			{
				
				$id=mysql_prep($_GET["subj"]);
				$menu_name=mysql_prep($_POST['menu_name']);
				$position=mysql_prep($_POST['position']);
				$visible=mysql_prep($_POST['visible']);
				$content = mysql_prep($_POST['content']);
				
				$query="update menu set
						menu_name='{$menu_name}',
						position='{$position}',
						visible='{$visible}',
						content = '{$content}'
						where subject_id='{$id}'";
				$result=mysql_query($query,$con);
				if(mysql_affected_rows() == 1)
					{
						$message="The subject is successfully updated";
					}
				else
					{	
						$message="The subject updation failed</br>";
						$message.= mysql_error();					
					}
			}		
			else
			{
				$message="There were".count($errors)." errors in the form";
			}
		}
?>
<?php find_selected_page();?>		
<?php include("includes/header.php"); ?>
		<div id="main">
			<table id="structure">
				<tr>
					<td id="navigation">
					<?php echo navigation($sel_subject,$sel_page); ?>
					</td>
										
					<td id="page">
					<h2>Edit Subject:<?php echo $sel_subject["menu_name"];?></h2>
					<?php
						if(!empty($message)){
						echo "<p class=\"message\">".$message."</p>";
						}?>
					<?php
						if(!empty($errors)){
						echo "<p class=\"errors\">";
						echo "Please review the following fields:</br>";
						foreach($errors as $error)
						{
							echo " - ".$error."</br>";
						}
						echo "</p>";
						}
					?>
					<form action="edit_subject.php?subj=<?php echo urlencode($sel_subject['subject_id'])?>" method="post">
					<p>Subject Name:<input type="text" name="menu_name" id="menu_name" value="<?php echo $sel_subject['menu_name'];?>"></p>
					<p>Position:
					<select name="position">
					<?php $subject_set=get_all_subjects();
						  $subject_count=mysql_num_rows($subject_set);
						for($count=0;$count<=$subject_count+1;$count++)
						{
						echo "<option value=\"$count\"";
						if($sel_subject['position']==$count)
						{
							echo " selected";
						}
						echo ">$count</option>";
						}
					?>
					</select></p>
					<p>Visible:
					<input type="radio" name="visible" value="0" <?php 
					if($sel_subject['visible']==0){echo " checked";}?>
					/>No
					&nbsp;
					<input type="radio" name="visible" value="1" <?php 
					if($sel_subject['visible']==1){echo " checked";}?>/>Yes
					</p>
					<p>Content:</br>
					<textarea name="content" rows="20" cols="80"><?php echo $sel_subject['content']; ?></textarea>
					</p>
					<input type="submit" name="submit" value="Edit Subject" />
					&nbsp;&nbsp;
					<a href="delete_subject.php?subj=<?php echo urlencode($sel_subject["subject_id"]);?>"                            
					onclick="return confirm('Are You Sure?');">Delete Subject</a>
					</form>
					</br>
					<a href="content.php">Cancel</a>
					</td>
				</tr>
			</table>
		</div>
<?php require("includes/footer.php");?>