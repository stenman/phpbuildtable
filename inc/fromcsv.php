
<?php

$file = fopen("../res/agdqschedulesummer2014.csv", "r");

while ( !feof($file) )
{
	$line = fgets($file, 2048);

	$data = str_getcsv($line, ";");

	echo "<tr>";
	foreach ($data as $cell) {
		echo "<td>" . htmlspecialchars($cell) . "</td>";
	}
	echo "</tr>";
}                              

?>
