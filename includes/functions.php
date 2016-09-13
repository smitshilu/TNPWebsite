<?php

	function confirmation_mail($userID)
	{
		require_once("phpmailer/class.phpmailer.php");
		require_once("includes/connection.php");
		
		$email_query=mysql_query("select * from record");
		confirm_query($email_query);
		$result1=mysql_fetch_array($email_query);
		
		$query=mysql_query("select random_no from users where userid='{$userID}'");
		confirm_query($query);
		if(mysql_num_rows($query)==1)
		{
			$result=mysql_fetch_array($query);
		}
		$mail = new PHPMailer(); // create a new object
		$mail->IsSMTP(); // enable SMTP
		$mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
		$mail->SMTPAuth = true; // authentication enabled
		$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for GMail
		$mail->Host = "smtp.gmail.com";
		$mail->Port = 465; // or 587
		$mail->IsHTML(true);
		$mail->Username =$result1[0];
		$mail->Password = $result1[1];
		$mail->SetFrom("noreply_tnp@charusat.edu.in");
		$mail->Subject = "CHARUSAT-T&P Confirmation Mail";
		$mail->Body = "Welcome to CHARUSAT T&P CELL.<br> Here is your confirmation code: ".$result[0]."<br>You will not be allowed to log in until you pay your Security Deposite.<br><br>Regards,<br>CHARUSAT Training And Placement Team.";
		$mail->AddAddress($userID);
		 if(!$mail->Send())
		    {
		    return "Mailer Error: " . $mail->ErrorInfo;
		    }
		    else
		    {
		    return true;
		    }
	}
	
	function c_confirmation_mail($email,$userid,$password)
	{
		require_once("phpmailer/class.phpmailer.php");
		require_once("includes/connection.php");
		
		$email_query=mysql_query("select * from tnp_emailid");
		confirm_query($email_query);
		$result=mysql_fetch_array($email_query);
		
		
		$mail = new PHPMailer(); // create a new object
		$mail->IsSMTP(); // enable SMTP
		$mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
		$mail->SMTPAuth = true; // authentication enabled
		$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for GMail
		$mail->Host = "smtp.gmail.com";
		$mail->Port = 465; // or 587
		$mail->IsHTML(true);
		$mail->Username =$result1[0];
		$mail->Password =$result1[1];
		$mail->SetFrom("noreply_tnp@charusat.edu.in");
		$mail->Subject = "You are registered at CSPIT-T&P Cell";
		$mail->Body = "We are thankful for electing CSPIT.<br> Here is your Login details on the portal<br> Username-".$userid."<br>Password-".$password;
		$mail->AddAddress($email);
		if(!$mail->Send())
		{
			return "Mailer Error: " . $mail->ErrorInfo;
		}
		else
		{
			return true;
		}
	}

	function placed($userID)
	{
		
		require_once("includes/connection.php");
		
		$query=mysql_query("select userID from `placed_students` where userID='{$userID}'");
		
		confirm_query($query);
		
		if(mysql_num_rows($query) == 1)
			return true;
		else
			return false;
	}

	date_default_timezone_set('Asia/Kolkata');
	function mysql_prep( $value ) {
		$magic_quotes_active = get_magic_quotes_gpc();
		$new_enough_php = function_exists( "mysql_real_escape_string" ); // i.e. PHP >= v4.3.0
		if( $new_enough_php ) { // PHP v4.3.0 or higher
			// undo any magic quote effects so mysql_real_escape_string can do the work
			if( $magic_quotes_active ) { $value = stripslashes( $value ); }
			$value = mysql_real_escape_string( $value );
		} else { // before PHP v4.3.0
			// if magic quotes aren't already on then add slashes manually
			if( !$magic_quotes_active ) { $value = addslashes( $value ); }
			// if magic quotes are active, then the slashes already exist
		}
		return $value;
	}
	
	function redirect_to($location=NULL)
	{
		if($location!=NULL)
		{
			header("Location:{$location}");
			exit;
		}
	}

	function confirm_query($result_set)
	{
		if(!$result_set)
		{
			die("query failed".mysql_error());
		}
	}
	function get_all_subjects()
	{
		global $con;
		$query="select * from menu 
				order by 
				position ASC";
		$subject_set=mysql_query($query,$con);
		confirm_query($subject_set);
		return $subject_set;
	}
	function get_pages_for_subject($subject_id)
	{
		global $con;
		$query="select * from pages 
				where page_subject_id={$subject_id}						
				order by position ASC";  										//subject_id from menu=page_subject_id fm page
		$page_set=mysql_query($query,$con); 
		confirm_query($page_set);
		return $page_set;
	}
	function get_subject_by_id($sel_subj) {
		global $con;
		$query = "SELECT * ";
		$query .= "FROM menu ";
		$query .= "WHERE subject_id=" . $sel_subj ." ";
		$query .= "LIMIT 1";
		$result_set = mysql_query($query, $con);
		confirm_query($result_set);
		// REMEMBER:
		// if no rows are returned, fetch_array will return false
		if ($subject = mysql_fetch_array($result_set)) {
			return $subject;
		} else {
			return NULL;
		}
	}
	function get_page_by_id($sel_page) {
		global $con;
		$query = "SELECT * ";
		$query .= "FROM pages ";
		$query .= "WHERE page_id=" . $sel_page ." ";
		$query .= "LIMIT 1";
		$result_set = mysql_query($query, $con);
		confirm_query($result_set);
		// REMEMBER:
		// if no rows are returned, fetch_array will return false
		if ($page = mysql_fetch_array($result_set)) {
			return $page;
		} else {
			return NULL;
		}
	}
	
	function find_selected_page()
	{
		global $sel_subject,$sel_page;
		if(isset($_GET['subj']))
		{
			$sel_subject=get_subject_by_id($_GET['subj']);
			$sel_page=NULL;
		}
		elseif(isset($_GET['page']))
		{
			$sel_page=get_page_by_id($_GET['page']);
			$sel_subject=NULL;
		}
		else
		{
			$sel_page=NULL;
			$sel_subject=NULL;
		}
		
	}
	
	function navigation($sel_subject,$sel_page)
	{
		$output="<ul class=\"subjects\">";
		$subject_set=get_all_subjects();
						
		while($subject=mysql_fetch_array($subject_set))
		{
			$output.= "<li ";
			if($subject["subject_id"]==$sel_subject["subject_id"])
			{
				$output.= "class=\"selected\"";
			}
			//$output.= "><a href=\"edit_subject.php?subj=".urlencode($subject["subject_id"])."\">{$subject["menu_name"]}</a></li>";									
							//menu_name from menu
			$output.= "><a href=\"content.php?subj=".urlencode($subject["subject_id"])."\">{$subject["menu_name"]}</a></li>";													
			$page_set=get_pages_for_subject($subject["subject_id"]);					//subject_id refers to menu table
							
			$output.= "<ul class=\"pages\">";
			while($page=mysql_fetch_array($page_set))
			{
			$output.= "<li "; 
			if($page["page_id"]==$sel_page["page_id"])
			{
				$output.= "class=\"selected\"";
			}
			$output.= "><a href=\"content.php?page=".urlencode($page["page_id"])."\">{$page["menu_name"]}</a></li>";							//here page_id refers to pages table.
			}
							
			$output.= "</ul>";
		}
			
			$output.= "</ul>";
			return $output;
	}
	function getDays($startDate,$endDate){
		// do strtotime calculations just once
		$endDate = strtotime($endDate);
		$startDate = strtotime($startDate);
	
	
		//The total number of days between the two dates. We compute the no. of seconds and divide it to 60*60*24
		//We add one to inlude both dates in the interval.
		$days = ($endDate - $startDate) / 86400 + 1;
	
		$no_full_weeks = floor($days / 7);
		$no_remaining_days = fmod($days, 7);
	
		//It will return 1 if it's Monday,.. ,7 for Sunday
		$the_first_day_of_week = date("N", $startDate);
		$the_last_day_of_week = date("N", $endDate);
	
		//---->The two can be equal in leap years when february has 29 days, the equal sign is added here
		//In the first case the whole interval is within a week, in the second case the interval falls in two weeks.
		if ($the_first_day_of_week <= $the_last_day_of_week) {
			if ($the_first_day_of_week <= 6 && 6 <= $the_last_day_of_week) $no_remaining_days--;
			if ($the_first_day_of_week <= 7 && 7 <= $the_last_day_of_week) $no_remaining_days--;
		}/*
		else {
		// (edit by Tokes to fix an edge case where the start day was a Sunday
				// and the end day was NOT a Saturday)
	
		// the day of the week for start is later than the day of the week for end
		//if ($the_first_day_of_week == 7) {
		// if the start date is a Sunday, then we definitely subtract 1 day
		//$no_remaining_days--;
	
		//  if ($the_last_day_of_week == 6) {
		// if the end date is a Saturday, then we subtract another day
		//  $no_remaining_days--;
		// }
		//}
		else {
		// the start date was a Saturday (or earlier), and the end date was (Mon..Fri)
		// so we skip an entire weekend and subtract 2 days
		$no_remaining_days -= 2;
		}
		}*/
	
		//The no. of business days is: (number of weeks between the two dates) * (5 working days) + the remainder
		//---->february in none leap years gave a remainder of 0 but still calculated weekends between first and last day, this is one way to fix it
		$workingDays = $no_full_weeks * 5;
		if ($no_remaining_days > 0 )
		{
			$workingDays += $no_remaining_days;
		}
	
	
		return $workingDays;
	}
	
?>