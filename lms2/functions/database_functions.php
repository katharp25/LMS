<?php

function fetchCoursesList() {
    require("config.php");

    $query = "SELECT 
                topics.Id AS topic_id,
                topics.topicName,
                subtopics.Id AS subtopic_id,
                subtopics.subTopicName,
                courses.id AS course_id,
                courses.courseName,
                courses.courseCost,
                courses.courseDesc,
                courses.bannerImage,
                courses.uploadfile,
                courses.learn,
                courses.summary,
                courses.requirements,
                courses.tag,
                courses.video
              FROM 
                topics
              JOIN 
                subtopics ON topics.Id = subtopics.topicId
              JOIN 
                courses ON subtopics.Id = courses.subTopicId
              ORDER BY courses.id DESC";

    $result = mysqli_query($con, $query);

    if (!$result) {
        echo "Query failed: " . mysqli_error($con);
        return false;
    }

    $courses = array();

    while ($row = mysqli_fetch_assoc($result)) {
        $courses[] = $row;
    }
    
    mysqli_close($con);
    
    return $courses;
}
