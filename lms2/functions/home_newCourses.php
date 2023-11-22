<?php
$host="localhost";
$db="saburi_lms_live";
$username="root";
$password="";

$con = mysqli_connect($host,$username,$password,$db);

$sql = "SELECT * FROM subtopics ORDER BY createdOn DESC LIMIT 5";
$allCourseListQuery = "SELECT * FROM courses ORDER BY id DESC";

// Execute the query
$result = $con->query($sql);
$allCourses = $con->query($allCourseListQuery);

// echo $result;

?>