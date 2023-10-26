<?php
// Include your database connection file here
// include('includes/db_connection.php');
include('config.php');

// Get the selected subtopic ID from the AJAX request
$sub_topic_id = $_GET['sub_topic_id'];
$topic_id = $_GET['topic_id'];

// Query the database to get all topics and the related subtopic
$query = "SELECT t.id, t.topicName, s.id AS subtopic_id
          FROM topics t
          LEFT JOIN subtopics s ON t.id = s.topicId AND s.id = $sub_topic_id";
$result = mysqli_query($con, $query);

if ($result) {
    $options = '<option value="">Select a topic</option>';
    while ($row = mysqli_fetch_assoc($result)) {
        // Check if the current row is related to the selected subtopic
        $selected = ($row['subtopic_id'] == $sub_topic_id) ? 'selected' : '';
        $options .= "<option value='{$row['id']}' $selected>{$row['topicName']}</option>";
    }
    echo $options;
} else {
    echo '<option>Failed to fetch topics</option>';
}

// topic module get query

$get_topic_query = mysqli_query($con,"SELECT * FROM topics where id= $topic_id");
$row= mysqli_fetch_assoc($get_topic_query);
$topic_name = $row["topicName"];

if($get_topic_query)
{
    echo $topic_name;
}

// // course module get query
// $course_id = $_GET['course_id'];


// // Query the database to get all topics, subtopics, and courses with a matching course_id
// $query = "SELECT 
// topics.Id AS topic_id,
// topics.topicName,
// subtopics.Id AS subtopic_id,
// subtopics.subTopicName,
// courses.Id AS course_id,
// courses.courseName,
// courses.courseCost,
// courses.courseDesc,
// courses.bannerImage,
// courses.uploadfile,
// courses.video
// FROM 
// topics
// JOIN 
// subtopics ON topics.Id = subtopics.topicId
// JOIN 
// courses ON subtopics.Id = courses.subTopicId
// WHERE 
// courses.Id = $course_id";
// $result = mysqli_query($con, $query);

// if ($result) {
//     $options = '<option value="">Select a topic</option>';
//     while ($row = mysqli_fetch_assoc($result)) {
//         // Check if the current row is related to the selected subtopic
//         $selected = ($row['courses.Id'] == $course_id) ? 'selected' : '';
//         $options .= "<option value='{$row['id']}' $selected>{$row['topicName']}</option>";
//     }
//     echo $options;
// } else {
//     echo '<option>Failed to fetch topics</option>';
// }


// if (!$fetch_list_join_topics_subtopic_course_query) {
//     die("Database query failed: " . mysqli_error($con));
// }



// Close the database connection
mysqli_close($con);
?>
