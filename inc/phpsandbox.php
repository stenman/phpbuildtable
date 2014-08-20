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
	<script type="text/javascript" charset="utf8" src="../js/datatablesinit_table_csv.js"></script>

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
		</tbody>

	</table>
</body>
</html>