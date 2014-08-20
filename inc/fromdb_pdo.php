<?php

$host = '127.0.0.1';
$user = 'phpbuildtableapp';
$pass = 'letmein';
$db = 'agdq_db';

/* Select queries return a resultset */
try{
	$dbh = getConnected($host,$user,$pass,$db);

	/*Placeholder execution by array*/
/*$stmt = $dbh->prepare("SELECT * FROM agdqschedule WHERE game = :game");
$stmt->execute(array(':game' => "Pikmin"));*/

/*Placeholder execution by bindParam (this is by reference as opposed to array, maybe bindParam is the preferred way of doing placeholders?)*/
/*$a_game = 'Pikmin';
$stmt = $dbh->prepare("SELECT * FROM agdqschedule WHERE game = :game");
$stmt->bindParam(':game', $a_game, PDO::PARAM_STR);
$stmt->execute();
echo $a_game;*/

/*Regular execution*/
$stmt = $dbh->prepare("SELECT * FROM agdqschedule");
$stmt->execute();

$result = $stmt->fetchAll();

foreach($result as $row){
	echo "<tr>";
	echo "<td>" . htmlspecialchars($row['date_and_time']) . "</td>";
	echo "<td>" . htmlspecialchars($row['game']) . "</td>";
	echo "<td>" . htmlspecialchars($row['runner']) . "</td>";
	echo "<td>" . htmlspecialchars($row['estimate']) . "</td>";
	echo "<td>" . htmlspecialchars($row['comments']) . "</td>";
	echo "<td>" . htmlspecialchars($row['couch_commentators']) . "</td>";
	echo "<td>" . htmlspecialchars($row['prizes']) . "</td>";
	echo "</tr>";
}

}
catch(PDOException $e)
{
	error_log($e->getMessage(),0);
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
