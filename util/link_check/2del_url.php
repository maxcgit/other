<?php
require_once "pdo.php";

foreach(file('rez') as $r){
	if(preg_match("/^(.+):/", $r, $m)){
		//echo "$m[1]\n";
		$sql = sprintf("select id from t1 where CONCAT(url, f) = '%s'", $m[1]);
		foreach ($dbh->query($sql) as $row) {
			$sql = sprintf("delete from t1 where id = %s", $row['id']);
			$dbh->exec($sql);
			$sql = sprintf("delete from t2 where t1_id = %s", $row['id']);
			$dbh->exec($sql);
		}
	}
}

echo "Done \n";