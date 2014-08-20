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

			function getConnected() {
				$host = 'localhost';
				$user = 'logintest';
				$pass = 'logintest';
				$db = 'vibo';

				$mysqli = new mysqli($host, $user, $pass, $db);

				if($mysqli->connect_error) {
					die('Connect Error (' . mysqli_connect_errno() . ') '
						. mysqli_connect_error());
				}
			}

			/*$table = get_table_from_DB_here;*/
/*			foreach ($table->row as $cell) {
				echo "<tr>";
				echo "<td>" . htmlspecialchars($cell->dateandtime) . "</td>";
				echo "<td>" . htmlspecialchars($cell->game) . "</td>";
				echo "<td>" . htmlspecialchars($cell->runner) . "</td>";
				echo "<td>" . htmlspecialchars($cell->estimate) . "</td>";
				echo "<td>" . htmlspecialchars($cell->comments) . "</td>";
				echo "<td>" . htmlspecialchars($cell->couchcommentators) . "</td>";
				echo "<td>" . htmlspecialchars($cell->prizes) . "</td>";
				echo "</tr>";
			}
*/
			?>
		</tbody>

	</table>
</body>
</html>