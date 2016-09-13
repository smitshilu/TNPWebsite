<?php

function validate()
{
	$errors=array();
	$required_fields=array('menu_name','position','visible');
	foreach($required_fields as $fieldname)
	{
		if(!isset($_POST[$fieldname]) || empty($_POST[$fieldname]))
		{
			$errors[]=$fieldname;
		}
	}
	$fields_with_lengths=array('menu_name'=>30);
	foreach($fields_with_lengths as $fieldname=>$maxlength)
	{
		if(strlen(trim(mysql_prep($_POST['menu_name']))) > $maxlength)
		{
			$errors[]=$fieldname;
		}
	}
	return $errors;
}
?>