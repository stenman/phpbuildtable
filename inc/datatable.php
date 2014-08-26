<!DOCTYPE html>
<html>
<head>
	<title>Create table from different datasources</title>

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

	<h1>AGDQ Summer Marathon 2014 Schedule</h1>
	<table id="table_agdq" class="display" width="100%">

		<form action="manage_records_processor.php" method="post">Enter a number: <input type="text" name="nrecords" size="3"> <br> 
			<input type="submit" name="insert" value="Add 5"> 
			<input type="submit" name="delete" value="Subtract 5"> 
		</form>

		<thead>
			<tr>	
				<th>Date and Time</th>
				<th>Game</th>
				<th>Runner</th>
				<th>Estimate</th>
				<th>Comments</th>
				<th>Couch Commentators</th>
				<th>Prizes</th>
			</tr>
		</thead>

		<tbody>
			<?php include "fromdb_pdo.php"; ?>
		</tbody>
	</table>
</body>
</html>