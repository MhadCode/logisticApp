<?php
	include('../config/mysql.php');
	include('../config/path.php');
	session_destroy();
	$url = URL;
	header("location:$url".'');
?>