<?php
function getConnected($host,$user,$pass,$db) {

	try {
		$pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
	}
	catch(PDOException $e)
	{
		error_log($e->getMessage(),0);
	}
	return $pdo;
}

?>