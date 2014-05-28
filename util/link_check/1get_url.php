<?php
require_once "pdo.php";

$f = fopen('url', 'w');
$sql = "SELECT id, url, f FROM `t1` WHERE`check` = 0 AND id >= 5000 AND id < 15000";
foreach( $dbh->query($sql) as $r){
  fwrite($f, sprintf("%s%s\n", $r['url'], $r['f']));
}
fclose($f);

