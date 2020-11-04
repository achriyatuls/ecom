<?php 
	$db = mysqli_connect('localhost','root','','udacoding');

	$phone= $_POST['phone'];
	$password = $_POST['password'];
	

	$sql = "SELECT * FROM user_donat WHERE phone = '".$phone."' AND password = '".$password."'";

	$result = mysqli_query($db,$sql);
	$count = mysqli_num_rows($result);

	if ($count == 1) {
		echo json_encode("Success");
	}else{
		echo json_encode("Error");
	}

?>