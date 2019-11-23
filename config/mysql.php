<?php
	@session_start();
	$server = "127.0.0.1";
	$un = "root";
	$pw = "";
	$db = "logistic";
	$port = "3306";

	$cn = new mysqli($server, $un, $pw, $db, $port);
 	$cn->set_charset("utf8");
	if ($cn->connect_errno) {
	    echo "Failed to connect to MySQL: (" . $cn->connect_errno . ") " . $cn->connect_error;
	}
	else{
		// echo "Connect";
	}
	date_default_timezone_set('Asia/Manila');
?>