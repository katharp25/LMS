<?php
include('includes/header.php');
include('includes/sidebar.php');
include('functions/list_grid.php');
// include('functions/get_subtopics.php');
?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    // Bind a change event to the topic select
    $('#topic').change(function() {
        var topicId = $(this).val();
        if (topicId) {
            // Make an AJAX request to fetch subtopics for the selected topic
            $.ajax({
                url: 'functions/get_subtopics.php', // Replace with the actual server-side script
                data: {topicId: topicId},
                method: 'GET',
                success: function(data) {
                    // Populate the subtopic select with the retrieved data
                    $('#subtopic').html(data);
                }
            });
        } else {
            // Clear the subtopic select if no topic is selected
            $('#subtopic').html('<option>select subtopic name</option>');
        }
    });
});
</script>

<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card ">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Add Courses Details</h4>
                    <!-- <h4 class="card-title">Default form</h4>
                        <p class="card-description">
                            Basic form layout
                        </p> -->
                    <form class="forms-sample row" action="functions/functions" method="POST" enctype="multipart/form-data">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="topic"> Topic Name</label>
                                <!-- <input type="text" class="form-control" name="name" placeholder="Enter Name"> -->
                                <select class="form-control" name="topic" id="topic">
                                <option value=""> Select Topic Name</option>
                                <?php
                                    if($fetch_list_topic_query)
                                    {
                                        // $i = 1;
                                    
                                        while($row=mysqli_fetch_assoc($fetch_list_topic_query))
                                        {
                                            
                                            echo $topic_id;
                                            ?>
                                            
                                            <option value=<?= $row['Id']; ?>> <?= $row['topicName']; ?></option>
                                            <?php
                                        }
                                    }else{
                                        echo "Query failed!";
                                    }
                                   ?> 
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="subtopic">Sub Topic Name</label>
                                <!-- <input type="text" class="form-control" name="name" placeholder="Enter Name"> -->
                                <select class="form-control" name="subtopic" id="subtopic">
                                    <option> select subtopic name</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="courseName">Course Name</label>
                                <input type="text" class="form-control" name="courseName"
                                    placeholder="Enter Course Name">
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="number" class="form-control" name="price" placeholder="Enter Price">
                            </div>
                            <div class="form-group">
                                <label for="image">Image</label>
                                <input type="file" class="form-control-file" name="image" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label for="uploadfile">Upload File</label>
                                <input type="file" class="form-control-file" name="uploadfile">
                            </div>
                            <div class="form-group">
                                <label for="image">Upload Video</label>
                                <input type="file" class="form-control-file" name="video" accept="video/*">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="banner_desc">Description</label>
                                <textarea class="richtext" name="desc">
                            Welcome to Saburi LMS
                                    </textarea>
                            </div>

                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary me-2" name="course_manage">Submit</button>
                            <button class="btn btn-light">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Courses Details</h4>
                    <div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Topic Name</th>
                                <th>Sub Topic Name</th>
                                <th>Course Name</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Upload File</th>
                                <th>Video</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if($fetch_list_join_topics_subtopic_course_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_join_topics_subtopic_course_query))
                                {
                                    $topic_name=$row['topicName'];
                                    $subtopic_name=$row['subTopicName'];
                                    $course_name=$row['courseName'];
                                    $price=$row['courseCost'];
                                    $desc=$row['courseDesc'];
                                    $img=$row['bannerImage'];
                                    $file=$row['uploadfile'];
                                    $video=$row['video'];
                                    ?>
                                    <tr>
                                    <td><?= $i;?></td>
                                    <td><?= $topic_name; ?></td>
                                    <td><?= $subtopic_name; ?></td>
                                    <td><?= $course_name; ?></td>
                                    <td><?= $price; ?></td>
                                    <td><?= $desc; ?></td>
                                    <td><?= $img; ?></td>
                                    <td><?= $file; ?></td>
                                    <td><?= $video; ?></td>
                                    <td>
                                        <button type="submit" class="btn btn-primary me-2 p-2" data-toggle="modal" data-target="#exampleModalCenter">Edit</button>
                                        <button class="btn btn-danger p-2">Delete</button>
                                    </td>
                                    </tr>
                                    <?php
                            $i++;
                                }
                                } else {
                                    echo "Query failed!";
                                }
                            ?>
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Edit manage Courses -->

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <label for="editTopic">Topic Name:</label>
            <input type="text" id="editTopic" name="editTopic" placeholder="Edit Topic Name">
            <br>

            <label for="editSubtopic">Subtopic Name:</label>
            <input type="text" id="editSubtopic" name="editSubtopic" placeholder="Edit Subtopic Name">
            <br>

            <label for="editCourse">Course Name:</label>
            <input type="text" id="editCourse" name="editCourse" placeholder="Edit Course Name">
            <br>

            <label for="editPrice">Price:</label>
            <input type="text" id="editPrice" name="editPrice" placeholder="Edit Price">
            <br>

            <label for="editDesc">Description:</label>
            <textarea id="editDesc" name="editDesc" placeholder="Edit Description"></textarea>
            <br>

            <label for="editImage">Image URL:</label>
            <input type="text" id="editImage" name="editImage" placeholder="Edit Image URL">
            <br>

            <label for="editFile">File URL:</label>
            <input type="text" id="editFile" name="editFile" placeholder="Edit File URL">
            <br>

            <label for="editVideo">Video URL:</label>
            <input type="text" id="editVideo" name="editVideo" placeholder="Edit Video URL">
            <br>

      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- Main Content ends -->

<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col">

            </div>
            <div class="col"></div>
        </div>
    </div>
</body>
</html> -->

<?php

include('includes/footer.php');

?>