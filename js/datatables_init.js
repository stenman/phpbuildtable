$(document).ready( function () {
	$('#table_agdq').DataTable({
		"processing": true,
		"serverSide": true,
		"ajax": "serverside/agdq_serverside.php",
		"deferRender":    true,
		"dom":            "frtiS",
		"sScrollX": "100%",
		"bScrollCollapse": true,
		"scrollY":        600,
		"scrollCollapse": true
	});
} );
