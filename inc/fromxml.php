<?php

$table = simplexml_load_file('../res/agdqschedulesummer2014.xml');

foreach ($table->row as $cell) {
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

?>