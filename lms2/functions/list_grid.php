<?php
include('config.php');


// fetching list of Users to users module

$fetch_list_query=mysqli_query($con,"SELECT * FROM users");
$fetch_list_topic_query=mysqli_query($con,"SELECT * FROM topics");
$fetch_list_subtopic_query=mysqli_query($con,"SELECT * FROM subtopics");
$fetch_list_join_topics_subtopic_query=mysqli_query($con,"SELECT topics.topicName,subtopics.subTopicName FROM subtopics INNER JOIN topics ON topics.Id = subtopics.topicId;");
// $fetch_list=mysqli_fetch_assoc($fetch_list_query);
// $users_name=$fetch_list['Name'];
// echo $users_name;



?>