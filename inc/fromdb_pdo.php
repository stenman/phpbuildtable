<?php

$host = '127.0.0.1';
$user = 'phpbuildtableapp';
$pass = 'letmein';
$db = 'agdq_db';

/* Select queries return a resultset */
try{
	$dbh = getConnected($host,$user,$pass,$db);

	$stmt = $dbh->prepare("SELECT * FROM agdqschedule");

	/*$stmt->bindParam(':param1', $param1, PDO::PARAM_INT);*/
	$stmt->execute();
	while($row = $stmt->fetch())
	{
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
