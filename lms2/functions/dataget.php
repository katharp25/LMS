<?php

include("config.php");

$topic_row_id = $_GET['topic_row_id'];

$get_topic_name_query = mysqli_query($con,"SELECT * from topics where id=$topic_row_id");

if($get_topic_name_query) {
    $row = mysqli_fetch_assoc($get_topic_name_query);
    $topic_name = $row['topicName'];
    $response = array(
        'topic_name' => $topic_name
    );

    echo json_encode($response);

} else {
    echo "bhai kuch to locha hai";

}


// echo $topic_row_id;

?>