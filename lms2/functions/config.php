<?php
session_start();

$host = "localhost";
$db = "saburi_lms_2023";
$password = "";
$username = "root";

// Create a database connection
$con = mysqli_connect($host, $username, $password, $db);

// Check if the connection was successful
// if (!$con) {
//     die("Connection failed: " . mysqli_connect_error());
// } else {
//     echo "Connected successfully";
// }

// $mainlink = "http://localhost/LMS/lms2/";

$mainlink="http://localhost/LMS/lms2/";
// $mainlink="http://localhost:8080/LMS/lms2/";


?>