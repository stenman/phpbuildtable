<?php

$host = '127.0.0.1';
$user = 'phpbuildtableapp';
$pass = 'letmein';
$db = 'agdq_db';

/* Select queries return a resultset */
try{

	include 'utilities/get_connected.php';

	$dbh = getConnected($host,$user,$pass,$db);

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

?>
