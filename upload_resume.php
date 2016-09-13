<!Doctype HTML>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php confirm_logged_in();?>
<?php
$message="<b><font color=\"red\">Resume format should be in PDF</font></b>";
$id=$_SESSION['sessionid'];
	if(!logged_in())
	{
		redirect_to("index.php");
	}
	if (isset($_POST['submit']))
	{
		$name= $id.'.'."pdf";
		$type= $_FILES["myfile"]["type"];
		$size= $_FILES["myfile"]["size"];
		$temp= $_FILES["myfile"]["tmp_name"];
		$error= $_FILES["myfile"]["error"];
	
		if ($error > 0)
			die("Error uploading file! code $error.");
		else
		   {
		  /* 	if(file_exist($id))
		   	{
		   		$base_directory = '/include/';
		   		if(unlink($base_directory.$_GET['file']))
		   		{
		   			continue;
		   		}
		   		else{
		   			die("Error uploading file!");
		   		}
		   	}  */
		   	
		   	
		   	
		   	
		   	
			if($type=="application/msword" || $type=="application/vnd.openxmlformats-officedocument.wordprocessingml.document" 
			|| $type=="application/pdf")//condition for the file
			{
				move_uploaded_file($temp, "uploaded/" .$name);
				echo "<script language=javascript>alert('Upload complete!');</script>";
			}
		}	
	}
	if (isset($_POST['delete']))
	{
		
	}
?>
<?php include("includes/header1.php"); ?>
<section class="middle">
	<?php include("includes/student_menu.php"); ?>
	<section class="center">
	<hgroup><h2 class="welcome">Upload Your Resume Here!</h2></hgroup>
	<br><?php if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";} ?><br>
	<form action="" method="post" enctype="multipart/form-data">
	<input type='file' name='myfile'></br></br></br></br>
	<input type='submit' name="submit" class="buttons" style="border: none" value='Upload'>
	</form>			
	
	</section>
<?php include("includes/footer1.php");?>