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

	<!-- AJAX processing -->
	<script type="text/javascript" src="../js/postdata.js"></script>

	<!-- DataTables -->
	<script type="text/javascript" charset="utf8" src="../js/DataTables-1.10.2/media/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" charset="utf8" src="../js/DataTables-1.10.2/extensions/Scroller/js/dataTables.scroller.min.js"></script>
	<script type="text/javascript" charset="utf8" src="../js/datatables_init.js"></script>
	<script type="text/javascript" charset="utf8" src="../js/DataTables-1.10.2/media/js/dataTables.jqueryui.js"></script>

	<!-- DataTables CSS -->
	<link rel="stylesheet" type="text/css" href="../js/DataTables-1.10.2/media/css/dataTables.jqueryui.css">
	<link rel="stylesheet" type="text/css" href="../js/DataTables-1.10.2/extensions/Scroller/css/dataTables.scroller.min.css">

	<!-- Custom CSS -->
	<link rel="stylesheet" type="text/css" href="../css/datatable.css">

</head>
<body>

	<h1>AGDQ Summer Marathon 2014 Schedule</h1>
	<div class="form-group">
		<form id="form_manage_records" action="utilities/process.php" method="post">
			<div id="insert-group">
				<input type="text" name="nrecords" size="18" placeholder="1 to 50000">
				<input type="submit" class="btn_submit" name="insert" value="Insert Records"> 
			</div>
			<div id="delete-group">
				<input type="submit" class="btn_submit" name="delete" value="Delete All Inserted"> 
			</div>
		</form>
	</div>

	<div class="table">
		<table id="table_agdq" class="display" cellspacing="0" cellpadding="0" border="0" width="100%">
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
		</table>
	</div>
</body>
</html>