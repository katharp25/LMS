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
                    <h4 class="card-title">Corporate Governance Page</h4>
                    <!-- <p class="card-description">
                        You can Write the content for about page.
                    </p> -->
                   
                    <form class="forms-sample" action="functions/functions" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title"
                                placeholder="Enter Title ">
                        </div> `
                        <div class="form-group"> 
                            <label for="image">Image</label>
                            <input type="file" class="form-control-file" name="image" accept="image/*">
                        </div>
                        <div class="form-group">
                            <label for="neme">Name</label>
                            <input type="text" class="form-control" name="name"
                                placeholder="Enter Name">
                        </div>
                        <button type="submit" class="btn btn-primary me-2" name="corporateGovernance_manage">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Corporate Governance List</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th hidden></th>
                                <th> title</th>
                                <th> Name</th>
                                <th> Image </th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if($fetch_list_corporategovernance_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_corporategovernance_query))
                                {
                                    $id=$row['id'];
                                    $title=$row['title'];
                                    $image=$row['image'];
                                    $name=$row['name'];
                                    ?>
                                    <tr>
                                    <td><?= $i;?></td>
                                    <td class="edit_id" hidden><?= $id;?></td>
                                    <td><?= $title; ?></td>
                                    <td><img src="./functions/<?= $image; ?>" width="80" height="80"></td>                                    <td><?= $name; ?></td>
                                    <td>
                                        <button type="submit" class="btn btn-primary me-2 p-2 edit-button"  data-bs-toggle="modal" data-bs-target="#editmodal"
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
                <h5 class="modal-title" id="editBlogModalLabel">Edit Blog</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" action="./functions/functions.php" enctype="multipart/form-data">
              <div class="modal-body">
                <!-- Form for editing the blog content -->
                
                    <input type ="hidden" id="cgId" name="cgId">
                      <div class="form-group">
                        <label for="editTitle">Title</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Name</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Image</label>
                        <input type="file" class="form-control" onchange="loadFile(event)" id="image" name="image">
                        <input type="hidden" id="oldImage" name="oldImage" width="80" height="80" />
                    </div>
                    <div class="form-group">
                                <label for="editTitle">Existing Image</label><br>
                                <img src="" id="output" name="output" width="80" height="80" />
                            </div>
                </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="saveChanges" name="update_cg">Save Changes</button>
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
                <button type="submit" class="btn btn-danger" name="delete_cg" id="delete_cg">Delete</button>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function() {
    $('.edit-button').on('click', function() {
        var cgId = $(this).closest('tr').find('.edit_id').text();
        console.log(cgId);
        $.ajax({
        type: 'POST',
        url: './functions/functions.php', // Replace with the URL of your server-side script
        data: { 
            'checking_cg_btn' : true,
             'cgId': cgId, },
        // dataType: 'json',
        success: function(response) {
            console.log(response);
            $.each(response, function (key, value)
            {

                // Populate the input elements with data received from the server
                $('#title').val(value['title']);
                $('#name').val(value['name']); 
                $('#output').attr('src', './functions/' + value['image']); 
                $('#cgId').val(value['id']); 
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
        var cgId = $(this).closest('tr').find('.edit_id').text();

        console.log(cgId);
        $('#delete_id').val(cgId);
        $('#deleteModal').modal('show'); 
    
    });
});
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>

var loadFile = function(event) {

    var output = document.getElementById('output');

    output.src = URL.createObjectURL(event.target.files[0]);

    output.onload = function() {

        URL.revokeObjectURL(output.src) // free memory

    }

};

</script>
<?php

include('includes/footer.php');

?>