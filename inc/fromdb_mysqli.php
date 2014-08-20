<?php

$host = '127.0.0.1';
$user = 'phpbuildtableapp';
$pass = 'letmein';
$db = 'agdq_db';

$db_connection = getConnected($host,$user,$pass,$db);

$q = "SELECT * FROM agdqschedule";

/* Select queries return a resultset */
if ($result = $db_connection->query($q)) {

	while($row = $result->fetch_array())
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

	/* free result set */
	$result->close();
}

$db_connection -> close();

function getConnected($host,$user,$pass,$db) {

	$mysqli = new mysqli($host, $user, $pass, $db);

	/* check connection */
	if ($mysqli->connect_errno) {
		printf("Connect failed: %s\n", $mysqli->connect_error);
		exit();
	}

	return $mysqli;
}

?>