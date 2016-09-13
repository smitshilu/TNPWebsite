<!Doctype html>
<?php require_once("includes/temp_session.php");?>
<?php require_once("includes/connection.php");?>
<?php require_once("includes/functions.php");?>
<?php require_once("Classes/PHPExcel.php");?>
<?php confirm_logged_in();?>
<?php
$year=$_SESSION['year']; 
$course=$_SESSION['course'];
$branch=implode("','",$course);
$cgpa=$_SESSION['cgpa'];
$tenth;
$twelth;
	if(isset($_SESSION['tenth']))
	{
		$tenth=$_SESSION['tenth'];
	}
	if(isset($_SESSION['twelth']))
	{
		$twelth=$_SESSION['twelth'];
	}
	
	$query1="select branch_id from branch where branch_name={$branch}";
	$result1=mysql_query($query1);
	$fetch=mysql_fetch_array($result1);
	
$query = "SELECT `Firstname`,`Lastname`,`branch_id`,`Gender`,`Mobileno`, `Email`  
		  FROM `student_details` WHERE branch_id IN ('$fetch[0]') and `Year`='$year' and Tenthresult > '$tenth' and 
		  Twelthresult > '$twelth' and (CGPA > '$cgpa' || CGPA = '$cgpa')";  

// Execute the database query
$result = mysql_query($query);
confirm_query($result);
// Instantiate a new PHPExcel object
$objPHPExcel = new PHPExcel(); 
// Set the active Excel worksheet to sheet 0
$objPHPExcel->setActiveSheetIndex(0); 
// Initialise the Excel row number
$rowCount = 1; 
// Iterate through each result from the SQL query in turn
// We fetch each database result row into $row in turn
$objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount,'Firstname');
$objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount,'Lastname');
$objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount,'Branch');
$objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount,'Gender');
$objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount,'Mobileno');
$objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount,'Email');
while($row = mysql_fetch_array($result)){ 
    $rowCount++;
	$objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, $row['0']);
	$objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, $row['1']);
	$objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount, $row['2']);
	$objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount, $row['3']);
	$objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, $row['4']);
	$objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, $row['5']);
} 
$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel); 
// Write the Excel file to filename some_excel_file.xlsx in the current directory
$file = 'some_excel_file.xlsx';
$objWriter->save($file); 


?>
<body bgcolor="black">
<center><p style="color:white;font-size:35px">Your File is downloading...</p></center></br>
<center><a href="eligible.php" style="text-decoration:none;color:yellow;font-size:25px">Click here!</a></center>
<?php echo "<script>window.location='$file'</script>" ?>
</body></html>