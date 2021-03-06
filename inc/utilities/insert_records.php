<?php

function insertrecords($nrecords){

	$host = '127.0.0.1';
	$user = 'phpbuildtableapp';
	$pass = 'letmein';
	$db = 'agdq_db';

	$date = new DateTime('2000-01-01 12:00:00');

	$recordsinserted = 0;

	try{
		include 'get_connected.php';
		$dbh = getConnected($host,$user,$pass,$db);

		for ($i=0; $i < $nrecords; $i++) { 

			$date->add(new DateInterval('PT1H'));
			$datestring = $date->format('Y-m-d H:i:s');

			$stmt = $dbh->prepare("INSERT INTO agdqschedule (date_and_time, game, runner, estimate, comments, couch_commentators, prizes) VALUES (:dateandtime, 'New record', 'A cool running man', '01:49:16', '', 'Veegie64, Coolstoryliv', 'Some Stuff')");

			$stmt->bindParam(":dateandtime", $datestring, PDO::PARAM_STR);
			$stmt->execute();
			$recordsinserted += $stmt->rowCount();
		}
	}
	catch(PDOException $e) {
		error_log($e->getMessage().PHP_EOL, 3, "errors.log");
	}

	$dbh -> connection = null;

	return $recordsinserted;
}
?>