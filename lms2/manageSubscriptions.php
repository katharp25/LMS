<?php
include('includes/header.php');
include('includes/sidebar.php');
include('functions/list_grid.php');
?>
<style>
    /* Customize the modal size */
    .modal-dialog {
        max-width: 50%;
        /* Adjust this value to control the width */
        height: 80vh;
        /* Adjust this value to control the height */
    }
</style>

<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card ">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Add Subscription </h4>
                    <form class="forms-sample row" action="functions/functions" method="POST">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name"> Subscription Name</label>
                                
                                <input type="text" class="form-control" name="subscription" placeholder="Enter Subscription Name">
                            </div>
                            <div class="form-group">
                                <label for="type">Type</label>
                                <input type="text" class="form-control" name="type" placeholder="Enter Type">
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="number" class="form-control" name="price" placeholder="Enter Price">
                            </div>
                        </div>
                        <div class="col-md-6">

                            <div class="form-group">
                                <label for="duration">Duration</label>
                                <input type="text" class="form-control" name="duration" placeholder="Enter Duration">
                            </div>
                            <div class="form-group">
                                <label for="courseName">Course Name</label>
                                <input type="text" class="form-control" name="courseName" placeholder="Enter Course Name">
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary me-2" name="subscription_manage">Submit</button>
                                <button class="btn btn-light">Cancel</button>
                            </div>

                        </div>

                    </form>
                </div>
            </div>
        </div>
</div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Subscription</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th hidden></th>
                                <th>Subscription Name</th>
                                <th>Type</th>
                                <th>Price</th>
                                <th>Duration</th>
                                <th>Course ID</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($fetch_list_query_subscription) {
                                $i = 1;
                                while ($row = mysqli_fetch_assoc($fetch_list_query_subscription)) {
                                    $id = $row['id'];
                                    $subscription = $row['subscription'];
                                    $type = $row['type'];
                                    $price = $row['price'];
                                    $duration = $row['duration'];
                                    $courseName = $row['courseName'];
                            ?>
                                    <tr>
                                    <td class="edit_id" hidden><?= $id;?>
                                    <td><?= $i;?></td>
                                    <td><?= $subscription;?></td>
                                    <td><?= $type;?></td>
                                    <td><?= $price;?></td>
                                    <td><?= $duration;?></td>
                                    <td><?= $courseName;?></td>
                                    <td>
                                    <button type="button" class="btn btn-primary p-2 edit-button" data-bs-toggle="modal" data-bs-target="#editModal"  data-id="<?= $id ?>">
                                        edit
                                    </button>

                                        <button class="btn btn-danger p-2 delete-button" data-bs-toggle="modal" data-bs-target="#deleteModal"  data-id="<?= $id ?>">Delete</button>
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
    <!-- </div>
</div>
    </div>
</div> -->

<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editBlogModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBlogModalLabel">Edit Subscription</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" action="./functions/functions.php">
              <div class="modal-body">
                <!-- Form for editing the blog content -->
                
                    <input type ="hidden" id="subscription_id" name="subscription_id">
                      <div class="form-group">
                        <label for="editTitle">Name</label>
                        <input type="text" class="form-control" id="editname" name="editname">
                    </div>
                    <div class="form-group">
                        <label for="editWriter">Type</label>
                        <input type="text" class="form-control" id="edittype" name="edittype">
                    </div>
                    <div class="form-group">
                        <label for="editImage">price</label>
                        
                        <input type="text" class="form-control" id="editprice" name="editprice" width="80" height="80" />
                    </div>

                    <div class="form-group">
                                <label for="editTitle">Duration</label><br>
                                <input type="text" class="form-control" id="editduration" name="editduration" width="80" height="80" />
                            </div>

                    <div class="form-group">
                        <label for="editDescription">Course Id</label>
                        <textarea class="form-control" id="courseId" name="courseId"></textarea>
                    </div>
               </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="update_subscription" name="update_subscription">Save Changes</button>
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
                <button type="submit" class="btn btn-danger" name="delete_subscription" id="delete_subscription">Delete</button>
            </div>
        </div>
    </div>
</div>

<script>

    $(document).ready(function() {
    $('.edit-button').on('click', function() {
        var subscriptionId = $(this).closest('tr').find('.edit_id').text();
        // console.log(blogId);
        $.ajax({
        type: 'POST',
        url: './functions/functions.php', // Replace with the URL of your server-side script
        data: { 
            'checking_subscription_btn' : true,
             'subscription_id': subscriptionId, },
        // dataType: 'json',
        success: function(response) {
            console.log(response);
            $.each(response, function (key, value)
            {
                $('#editname').val(value['subscription']);
                $('#edittype').val(value['type']);
                $('#editprice').val(value['price']);
                // You can handle image display or updating as needed
                $('#editduration').val(value['duration']);
                $('#courseId').val(value['courseName']);
                $('#subscription_id').val(value['id']); 
            
            
                $('#editModal').modal('show'); 
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
        var subscription_id = $(this).closest('tr').find('.edit_id').text();

        console.log(subscription_id);
        $('#delete_id').val(subscription_id);
        $('#deleteModal').modal('show'); 
    
    });
});
</script>

<?php

include('includes/footer.php');

?>