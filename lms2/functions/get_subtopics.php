<?php
// Include your database connection file here
// include('includes/db_connection.php');
include('config.php');

// Get the selected topic ID from the AJAX request
$topicId = $_GET['topicId'];


// Query the database to get subtopics for the selected topic
$query = "SELECT Id, subtopicName FROM subtopics WHERE topicId = $topicId";
$result = mysqli_query($con, $query);


if ($result) {
    $options = '<option>select subtopic name</option>';
    while ($row = mysqli_fetch_assoc($result)) {
        $options .= "<option value='{$row['Id']}'>{$row['subtopicName']}</option>";
    }
    echo $options;
    
} else {
    echo '<option>Failed to fetch subtopics</option>';
}


?>
