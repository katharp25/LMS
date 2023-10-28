<?php
include('includes/header.php');
include('includes/sidebar.php');
include('functions/list_grid.php');
?>


<!-- Main Content Panel -->
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Free Resources Page</h4>
                    <!-- <p class="card-description">
                        You can Write the content for about page.
                    </p> -->
                   
                    <form class="forms-sample" action="functions/functions" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                            <label for="heading">Heading</label>
                            <input type="text" class="form-control" name="heading"
                                placeholder="Enter Heading">
                        </div>
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title"
                                placeholder="Enter Title ">
                        </div>
                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" class="form-control-file" name="image" accept="image/*">
                        </div>
                       
                        <div class="form-group">
                            <label for="desc">Description</label>
                            <textarea class="richtext" name="desc">
                                        Welcome to Saburi LMS
                                    </textarea>
                        </div>
                       
                        <button type="submit" class="btn btn-primary me-2" name="freeResources_manage">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Free Resources List</h4>
                    <div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th hidden></th>
                                <th> Heading </th>
                                <th>Title</th>
                                <th>Image</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if($fetch_list_freeResources_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_freeResources_query))
                                {
                                    $id = $row['id'];
                                    $resourcesName = $row['resourcesName'];
                                    $title = $row['title'];
                                    $image = $row['bannerImage'];
                                    $description = $row['description'];
                                    // $desc=$row['courseDesc'];
                                    // $img=$row['bannerImage'];
                                    // $file=$row['uploadfile'];
                                    // $video=$row['video'];
                                    ?>
                                    <tr>
                                    <td><?= $i;?></td>
                                    <td class="edit_id" hidden><?= $id; ?></td>
                                    <td><?= $resourcesName; ?></td>
                                    <td><?= $title; ?></td>
                                    <td><?= $image; ?></td>
                                    <td><?= $description; ?></td>
                                    <!-- <td><?= $desc; ?></td>
                                    <td><?= $img; ?></td>
                                    <td><?= $file; ?></td>
                                    <td><?= $video; ?></td> -->
                                    <td>
                                        <button type="submit" class="btn btn-primary me-2 p-2 edit-button" data-bs-toggle="modal" data-bs-target="#editmodal"
                                        data-id="<?= $id; ?>">Edit</button>
                                        <button class="btn btn-danger p-2 delete-button" data-bs-toggle="modal" data-bs-target="#deletemodal"
                                        data-id="<?= $id; ?>">Delete</button>
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
<!-- Main Content ends -->

<div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="editBlogModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBlogModalLabel">Edit Resources</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" action="./functions/functions.php">
              <div class="modal-body">
                <!-- Form for editing the blog content -->
                
                    <input type ="hidden" id="resource_id" name="resource_id">
                      <div class="form-group">
                        <label for="editTitle">Resources Name</label>
                        <input type="text" class="form-control" id="resourses_name" name="resourses_name">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Title</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Banner Image</label>
                        <input type="text" class="form-control" id="banner_image" name="banner_image">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Description</label>
                        <input type="text" class="form-control" id="description" name="description">
                    </div>
                    
                
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="saveChanges" name="update_resources">Save Changes</button>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteConfirmationModalLabel">Confirm Deletion</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="delete_blog.php" method="POST">

            <div class="modal-body">

                <input type="hidden" id="delete_id" name="delete_id">
                Are you sure you want to delete this record?
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-danger" name="delete_resources" id="delete_resources">Delete</button>
            </div>
        </div>
    </div>
</div>
<script>
$(document).ready(function() {
    $('.edit-button').on('click', function() {
        var resourceId = $(this).closest('tr').find('.edit_id').text();
        console.log(resourceId);
        $.ajax({
        type: 'POST',
        url: './functions/functions.php', // Replace with the URL of your server-side script
        data: { 
            'checking_resource_btn' : true,
             'resource_id': resourceId, },
        // dataType: 'json',
        success: function(response) {
            console.log(response);
            $.each(response, function (key, value)
            {

                // Populate the input elements with data received from the server
                $('#resourses_name').val(value['resourcesName']);
                $('#title').val(value['title']); 
                $('#banner_image').val(value['bannerImage']);
                $('#description').val(value['description']); 
                $('#resource_id').val(value['id']); 
                $('#editmodal').modal('show'); 
            });
           
        }
    });
    });
});

</script>

<script>

$(document).ready(function() {
    $('.delete-button').on('click', function(e) {
        e.preventDefault();
        var resourceId = $(this).closest('tr').find('.edit_id').text();

        console.log(resourceId);
        $('#delete_id').val(resourceId);
        $('#deleteModal').modal('show'); 
    
    });
});
</script>
<?php

include('includes/footer.php');

?>