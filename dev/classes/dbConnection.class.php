<?php

	$servername = "localhost";
	$username = "";
	$password = "";
	
	// erzeugt die DB-Verbindung
	$conn = new mysqli($servername, $username, $password);
	
	if ($conn->connect_error) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		exit;
	}
	
	echo "Connected successfully";

?>