<?php

$DB_USER = 'root';
$DB_PW = '';
$DB_NAME = 'db';
$DB_HOST = 'localhost';

$dbh = new PDO('mysql:host='.$DB_HOST.';dbname='.$DB_NAME, $DB_USER, $DB_PW);

function Query($sql){
  global $dbh;
  foreach( $dbh->query($sql) as $r) $ret[] = $r;
  return $ret;
}

function Q1($sql){
 $r = Query($sql);
 return $r[0];
}
