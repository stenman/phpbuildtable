<?php

$host = '127.0.0.1';
$user = 'phpbuildtableapp';
$pass = 'letmein';
$db = 'agdq_db';

$date = new DateTime('2014-06-22 11:59:00');

try{
	$datestring = $date->format('Y-m-d H:i:s');
	$dbh = getConnected($host,$user,$pass,$db);
	$stmt = $dbh->prepare("DELETE FROM agdqschedule WHERE date_and_time < '$datestring'");
	$stmt->execute();
}
catch(PDOException $e)
{
	echo 'Something went wrong!';
	error_log($e->getMessage().PHP_EOL, 3, "errors.log");
}

$dbh -> connection = null;

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