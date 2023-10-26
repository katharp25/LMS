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
                    <!-- <h4 class="card-title">Default form</h4>
                        <p class="card-description">
                            Basic form layout
                        </p> -->
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

                            <!-- <div class="form-group">
                                <label for="phoneNumber">Phone Number</label>
                                <input type="text" class="form-control" name="phoneNumber" placeholder="Enter Phone Number">
                            </div> -->

                            <!-- <div class="form-group">
                                <label for="userType">User Type</label>
                                <select class="form-control" name="userType">
                                    <option></option>
                                </select>
                            </div> -->
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
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Subscription</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
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
                                    $subscription = $row['subscription'];
                                    $type = $row['type'];
                                    $price = $row['price'];
                                    $duration = $row['duration'];
                                    $courseName = $row['courseName'];
                            ?>
                                    <tr>
                                        <td><?= $i; ?></td>
                                        <td><?= $subscription; ?></td>
                                        <td><?= $type; ?></td>
                                        <td><?= $price; ?></td>
                                        <td><?= $duration; ?></td>
                                        <td><?= $courseName; ?></td>
                                        <td>
                                            <button type="submit" class="btn btn-primary me-2 p-2 edit-sub" data-bs-toggle="modal" data-bs-target="#editmodal" data-id="<?= $row['id']?>">Edit</button>
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
        <!-- Edit Modal -->
        <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form class="forms-sample">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Subscription Details</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12 grid-margin stretch-card ">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Add Subscription </h4>
                                           <form class="forms-sample row" action="functions/functions" method="POST">
                                                <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name"> Subscription Name</label>
                                                        <input type="text" class="form-control" name="subscription" placeholder="Enter Subscription Name">
                                                        <input type="hidden" class="form-control" name="name" placeholder="Enter Name" id="editrow">
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
                                                </div>

                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary update_sb_tpc" name="update_sb_tpc">Update
                                Changes</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Edit Modal end -->
    </div>
</div>

<script>

    $(document).ready(function(){
      $('.edit-sub').on('click', function(){
        var rowid = $(this).data('id')
        $('#editrow').val(rowid)
        var editRow = $('#editrow').val(rowid);

        $.ajax({
            url: 'functions/edit_data.php', // Replace with the actual server-side script
            data: {
                    sub_id: rowid
                } ,
                mehod: 'GET',
                success: function(data){

                }
        })
      });
    });


    $(document).ready(function() {
        $('.edit-button').on('click', function() {
            var rowid = $(this).data('soumya');
            $('#editrow').val(rowid);
            var editRow = $('#editrow').val(rowid);

            console.log(rowid);

            $.ajax({
                url: 'functions/edit_data.php', // Replace with the actual server-side script
                data: {
                    course_id: rowid
                },
                method: 'GET',
                success: function(data) {
                    // Populate the subtopic select with the retrieved data
                    $('#topic_name').html(data);
                    // $('#subtopic_name').html(data);
                }
            });
            $.ajax({
                url: 'functions/modals_data.php', // Replace with the actual server-side script
                data: {
                    sub_topic_name: rowid
                },
                method: 'GET',
                success: function(data) {
                    // Populate the subtopic select with the retrieved data
                    var editRow = $('#subtopic_name').val(data);
                    // $('#subtopic_name').val(data);
                    // $('#subtopic_name').html(data);
                }
            });


        });
        $('.update_sb_tpc').on('click', function() {
            var sb_tp_id = $('#editrow').val();
            var tp_id = $('#topic_name').val();
            var sub_tp_name = $('#subtopic_name').val();

            console.log("Topic Name: " + tp_id + ", Sub Topic Name: " + sub_tp_name);
            $.ajax({
                url: 'functions/modals_data.php',
                data: {
                    updated_subtopic_name: sub_tp_name,
                    updated_topic_id: tp_id,
                    sb_tp_id: sb_tp_id
                },
                method: 'POST',
                success: function(data) {
                    console.log("Response from server:", data);

                    // Reload the page after a successful update

                    // location.href = location.href + '?refresh=' + new Date().getTime();
                    window.location.reload();

                }
            });
        });

    });
</script>

<?php

include('includes/footer.php');

?>