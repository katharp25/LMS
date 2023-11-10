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
                    <h4 class="card-title">Career Page</h4>
                    
                   
                    <form class="forms-sample" action="functions/functions" method="POST">
                    <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title"
                                placeholder="Enter Title ">
                        </div>
                    <div class="form-group">
                            <label for="exp">Years of Experience	</label>
                            <input type="number" class="form-control" name="exp"
                                placeholder="Enter Years of Experience">
                        </div>
                        <div class="form-group">
                            <label for="desc">Description</label>
                            <textarea class="rte" name="desc">
                                        
                                    </textarea>
                        </div>
                        <button type="submit" class="btn btn-primary me-2" name="career_manage">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Career List</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th hidden></th>
                                <th> Title </th>
                                <th> Years Of Exp </th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if($fetch_list_careers_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_careers_query))
                                {
                                    $id=$row['Id'];
                                    $title=$row['Title'];
                                    $experience=$row['Experience'];
                                    $description=$row['Description'];
                                    ?>
                                    <tr>
                                    <td><?= $i;?></td>
                                    <td class="edit_id" hidden><?= $id;?></td>
                                    <td><?= $title; ?></td>
                                    <td><?= $experience; ?></td>
                                    <td><?= $description; ?></td>
                                    <td>
                                    <button type="submit" class="btn btn-primary me-2 p-2 edit-button"
                                        data-bs-toggle="modal" data-bs-target="#editmodal"
                                        data-id="<?= $id; ?>">Edit</button>
                                        <button type="submit" class="btn btn-danger p-2 delete-button" data-bs-toggle="modal" data-bs-target="#deleteModal"  data-id="<?= $id; ?>">Delete</button>
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
<!-- Main Content ends -->
<div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="editBlogModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBlogModalLabel">Edit Career</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" action="./functions/functions.php">
              <div class="modal-body">
                <!-- Form for editing the blog content -->
                
                    <input type ="hidden" id="careerId" name="careerId">
                      <div class="form-group">
                        <label for="editTitle">Title</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Years Of Experience</label>
                        <input type="text" class="form-control" id="yoe" name="yoe">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Description</label>
                        <input type="text" class="form-control" id="description" name="description">
                    </div>
                    
                
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="saveChanges" name="update_career">Save Changes</button>
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
                <button type="submit" class="btn btn-danger" name="delete_career" id="delete_career">Delete</button>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function() {
    $('.edit-button').on('click', function() {
        var careerId = $(this).closest('tr').find('.edit_id').text();
        console.log(careerId);
        $.ajax({
        type: 'POST',
        url: './functions/functions.php', // Replace with the URL of your server-side script
        data: { 
            'checking_career_btn' : true,
             'careerId': careerId, },
        // dataType: 'json',
        success: function(response) {
            console.log(response);
            $.each(response, function (key, value)
            {

                // Populate the input elements with data received from the server
                $('#title').val(value['Title']);
                $('#yoe').val(value['Experience']); 
                $('#description').val(value['Description']);
               
                $('#careerId').val(value['Id']); 
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
        var careerId = $(this).closest('tr').find('.edit_id').text();

        console.log(careerId);
        $('#delete_id').val(careerId);
        $('#deleteModal').modal('show'); 
    
    });
});
</script>

<?php

include('includes/footer.php');

?>