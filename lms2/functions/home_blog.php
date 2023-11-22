<?php
$host="localhost";
$db="saburi_lms_live";
$username="root";
$password="";

$con = mysqli_connect($host,$username,$password,$db);

$sql = "SELECT * FROM blogs ORDER BY createdOn DESC LIMIT 3";

// Execute the query
$result = $con->query($sql);

// echo $result;

?>