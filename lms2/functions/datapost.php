<?php

include("config.php");

$topic_row_id = $_POST['topic_row_id'];
$topic_updated_name = $_POST['topic_name_update'];


// echo''.$topic_updated_name.'';

$update_topic_name_query = mysqli_query($con,"UPDATE topics SET topicName = '$topic_updated_name' WHERE id = $topic_row_id");

if($update_topic_name_query) {
    echo "bhai update ho gaya hai";
} else {
    echo "bhai kuch to locha hai";

}

if(isset($_POST["topic_name_update"])) {

    $delete_topic_id = $_POST['delete_topic_id'];
    echo $delete_topic_id;

}else{
        echo 'nop';
}



?>