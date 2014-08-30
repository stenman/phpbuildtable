<?php
function deleterecords(){
	$host = '127.0.0.1';
	$user = 'phpbuildtableapp';
	$pass = 'letmein';
	$db = 'agdq_db';

	$date = new DateTime('2014-06-22 11:59:00');

	$recordsdeleted = 0;

	try{
		$datestring = $date->format('Y-m-d H:i:s');
		include 'get_connected.php';
		$dbh = getConnected($host,$user,$pass,$db);
		$stmt = $dbh->prepare("DELETE FROM agdqschedule WHERE date_and_time < '$datestring'");
		$stmt->execute();
		$recordsdeleted = $stmt->rowCount();
	}
	catch(PDOException $e)
	{
		echo 'Something went wrong!';
		error_log($e->getMessage().PHP_EOL, 3, "errors.log");
	}

	$dbh -> connection = null;

	return $recordsdeleted;
}
?>