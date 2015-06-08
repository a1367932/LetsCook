<?php

	$servername = "localhost";
	$username = "";
	$password = "";
	$database = "test";
	
	// erzeugt die DB-Verbindung
	$conn = new mysqli($servername, $username, $password, $database);
	
	if ($conn->connect_error) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		exit;
	}

?>