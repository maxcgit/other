<?php
require_once "pdo.php";

$sql = "select id from t1 where url like 'http://www.ddd.com%'";
foreach ($dbh->query($sql) as $row) {
	$sql = sprintf("delete from t1 where id = %s", $row['id']);
	$dbh->exec($sql);
	$sql = sprintf("delete from t2 where t1_id = %s", $row['id']);
	$dbh->exec($sql);
}

echo "Done \n";