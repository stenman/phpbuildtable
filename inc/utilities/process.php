<?php 

$numberofrecords = $_POST["nrecords"];
$errors = array();
$data = array();

// validation ==================================================================

if (isset($_POST["insert"])) {
	if (!ctype_digit($numberofrecords)) {
		$errors['insert'] = 'Error: Invalid type provided. Please provide a valid integer as input.';
	}
	if (empty($numberofrecords)) {
		$errors['insert'] = 'Error: No records to insert. Please provide a valid number of records to insert.';
	}
	if ($numberofrecords > 50000) {
		$errors['insert'] = 'Error: Too many records. Please provide a number <= 50000';
	}
}

// return esponse ==============================================================

if (!empty($errors)) {
	$data['success'] = false;
	$data['errors']  = $errors;
}
else{
	if (isset($_POST["insert"])) {

		include 'insert_records.php';

		insertrecords();

		$data['success'] = true;
		$data['message'] = "Inserted {$numberofrecords} record(s)!";
	} 
	else if (isset($_POST['delete'])) {

		include 'delete_records.php';

		deleterecords();

		$data['success'] = true;
		$data['message'] = "Deleted records!";
	}
	else{
		$data['success'] = false;
		$data['errors']  = $errors;
	}
}

echo json_encode($data);
?>