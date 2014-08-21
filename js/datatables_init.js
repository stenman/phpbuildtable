$(document).ready( function () {
	$('#table_agdq').DataTable({
		"processing": true,
		"serverSide": true,
		"ajax": "serverside/agdq_serverside.php"
/*		"scrollY":        "600px",
		"scrollCollapse": true,
		"paging":         false*/
	});
} );
