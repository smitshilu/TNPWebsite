<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php include_once("includes/form_functions.php");?>
<?php
		if(intval($_GET["page"])==0)
		{
			redirect_to("content.php");
		}
		if(isset($_POST["submit"]))
		{
			$result=validate();
			if(empty($result))
			{
				
				$id=mysql_prep($_GET["page"]);
				$menu_name=mysql_prep($_POST['menu_name']);
				$position=mysql_prep($_POST['position']);
				$visible=mysql_prep($_POST['visible']);
				$content = mysql_prep($_POST['content']);
				
				$query="update pages set
						menu_name='{$menu_name}',
						position='{$position}',
						visible='{$visible}',
						content = '{$content}'
						where page_id='{$id}'";
				$result=mysql_query($query,$con);
				if(mysql_affected_rows() == 1)
					{
						$message="The page is successfully updated";
					}
				else
					{	
						$message="The page updation failed</br>";
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
					<h2>Edit Page:<?php echo $sel_page["menu_name"];?></h2>
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
					<form action="edit_page.php?page=<?php echo urlencode($sel_page['page_id'])?>" method="post">
					<?php include "page_form.php" ?>
					<input type="submit" name="submit" value="Update Page" />&nbsp;&nbsp;
					<a href="delete_page.php?page=<?php echo $sel_page['page_id']; ?>" onclick="return confirm('Are you sure you want to delete this page?');">Delete page</a>
					</form>
					<br />
					<a href="content.php?page=<?php echo $sel_page['page_id']; ?>">Cancel</a><br />
					</td>
				</tr>
			</table>
		</div>
<?php require("includes/footer.php");?>