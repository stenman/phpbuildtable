<!DOCTYPE html>
<html>
<head>
	<title>Create table from CSV</title>

	<!-- jQuery -->
	<script type="text/javascript" charset="utf8" src="../js/jquery-2.1.1.js"></script>

	<!-- jQuery UI-->
	<script type="text/javascript" charset="utf8" src="../js/jquery-ui-1.11.0.custom/jquery-ui.js"></script>

	<!-- Custom JQuery UI Theme -->
	<link rel="stylesheet" type="text/css" href="../js/jquery-ui-1.11.0.custom/jquery-ui.css">

	<!-- DataTables -->
	<script type="text/javascript" charset="utf8" src="../js/DataTables-1.10.2/media/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" charset="utf8" src="../js/datatables_init.js"></script>

	<!-- DataTables CSS -->
	<script type="text/javascript" charset="utf8" src="../js/DataTables-1.10.2/media/js/dataTables.jqueryui.js"></script>
	<link rel="stylesheet" type="text/css" href="../js/DataTables-1.10.2/media/css/dataTables.jqueryui.css">
</head>
<body>

	<h1>Hello World</h1>
	<table id="table_csv" class="display">

		<thead>
			<tr>	
				<th>Column 1</th>
				<th>Column 2</th>
				<th>Column 3</th>
				<th>Column 4</th>
				<th>Column 5</th>
				<th>Column 6</th>
				<th>Column 7</th>
			</tr>
		</thead>

		<tbody>
			<?php

			$host = '127.0.0.1';
			$user = 'phpbuildtableapp';
			$pass = 'letmein';
			$db = 'agdq_db';

			/* Select queries return a resultset */
			try{
				$dbh = getConnected($host,$user,$pass,$db);

				$stmt = $dbh->prepare("SELECT * FROM agdq_big");

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

/*			$date = new DateTime('2010-01-01 12:00:00');

			for ($i=0; $i < 50000; $i++) { 

				$date->add(new DateInterval('PT1H'));
				$date = mysql_real_escape_string($date);
				echo $date->format('Y-m-d H:i:s')."<br>";

				$insert_query = 'INSERT INTO agdq_big'.
				'(date_and_time, game, runner, estimate, comments, couch_commentators, prizes)'.
				'VALUES ($date, "New record", "A cool running man", "01:49:16", "", "Veegie64, Coolstoryliv", "Some Stuff")';

				if ($result = $db_connection->query($insert_query)) {
					echo 'Success!';
				}
				else{
					echo 'Fail!';
				}
			}*/

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

			function getConnectedmysqli($host,$user,$pass,$db) {

				$mysqli = new mysqli($host, $user, $pass, $db);

				/* check connection */
				if ($mysqli->connect_errno) {
					printf("Connect failed: %s\n", $mysqli->connect_error);
					exit();
				}

				return $mysqli;
			}

			?>
		</tbody>

	</table>
</body>
</html>