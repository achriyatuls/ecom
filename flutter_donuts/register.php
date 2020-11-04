<?php
	$db = mysqli_connect('localhost','root','','udacoding');
	if (!$db) {
		echo "Database connection faild";
	}

	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$phone = $_POST['phone'];
	$password = $_POST['password'];

	$sql = "SELECT phone FROM user_donat WHERE phone = '".$phone."'";

	$result = mysqli_query($db,$sql);
	$count = mysqli_num_rows($result);

	if ($count == 1) {
		echo json_encode("Error");
	}else{
		$insert = "INSERT INTO user_donat(fname,lname,phone,password)VALUES('".$fname."','".$lname."','".$phone."','".$password."')";
		$query = mysqli_query($db,$insert);
		if ($query) {
			echo json_encode("Success");
		}
	}

?>