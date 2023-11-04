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
                    <h4 class="card-title">Affiliate Page</h4>
                    <!-- <p class="card-description">
                        You can Write the content for about page.
                    </p> -->
                   
                    <form class="forms-sample row" action="functions/functions" method="POST">
                      <div class="col-md-6">
                      <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name"
                                placeholder="Enter Name">
                        </div>
                        <div class="form-group">
                            <label for="details">Details</label>
                            <input type="text" class="form-control" name="details"
                                placeholder="Enter Details ">
                        </div>
                        <div class="form-group">
                            <label for="contactdetails">Contact Details</label>
                            <input type="text" class="form-control" name="contactdetails"
                                placeholder="Enter Contact Details ">
                        </div>
                      </div>
                       <div class="col-md-6">
                       <div class="form-group">
                            <label for="contactPerson">Contact Person</label>
                            <input type="text" class="form-control" name="contactPerson"
                                placeholder="Enter Contact Person ">
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" class="form-control " name="address"
                                placeholder="Enter Address ">
                        </div>
                        <button type="submit" class="btn btn-primary me-2" name="affiliate_manage">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                       </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Affiliate Grid List</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th hidden></th>
                                <th> Company Name </th>
                                <th>Details</th>
                                <th>Contact Details</th>
                                <th>Contact Person</th>
                                <th>Address</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if($fetch_list_affiliate_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_affiliate_query))
                                {
                                    $id=$row['id'];
                                    $companyName=$row['companyName'];
                                    $details=$row['details'];
                                    $contactDetail=$row['contactDetail'];
                                    $contactPerson=$row['contactPerson'];
                                    $address=$row['address'];
                                    // $img=$row['bannerImage'];
                                    // $file=$row['uploadfile'];
                                    // $video=$row['video'];
                                    ?>
                                    <tr>
                                    <td><?= $i;?></td>
                                    <td class="edit_id" hidden><?= $id;?></td>
                                    <td><?= $companyName; ?></td>
                                    <td><?= $details; ?></td>
                                    <td><?= $contactDetail; ?></td>
                                    <td><?= $contactPerson; ?></td>
                                    <td><?= $address; ?></td>
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
            <form method="POST" action="./functions/functions.php">
              <div class="modal-body">
                <!-- Form for editing the blog content -->
                
                    <input type ="hidden" id="affiliateId" name="affiliateId">
                      <div class="form-group">
                        <label for="editTitle">Company Name</label>
                        <input type="text" class="form-control" id="company_name" name="company_name">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Details</label>
                        <input type="text" class="form-control" id="details" name="details">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Contact Details</label>
                        <input type="text" class="form-control" id="contact_details" name="contact_details">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Contact Person</label>
                        <input type="text" class="form-control" id="contact_person" name="contact_person">
                    </div>

                    <div class="form-group">
                        <label for="editTitle">Address</label>
                        <input type="text" class="form-control" id="address" name="address">
                    </div>
                    
                
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="saveChanges" name="update_affiliate">Save Changes</button>
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
                <button type="submit" class="btn btn-danger" name="delete_affiliate" id="delete_affiliate">Delete</button>
            </div>
        </div>
    </div>
</div>
<script>
$(document).ready(function() {
    $('.edit-button').on('click', function() {
        var affiliateId = $(this).closest('tr').find('.edit_id').text();
        console.log(affiliateId);
        $.ajax({
        type: 'POST',
        url: './functions/functions.php', // Replace with the URL of your server-side script
        data: { 
            'checking_affiliate_btn' : true,
             'affiliateId': affiliateId, },
        // dataType: 'json',
        success: function(response) {
            console.log(response);
            $.each(response, function (key, value)
            {

                // Populate the input elements with data received from the server
                $('#company_name').val(value['companyName']);
                $('#details').val(value['details']); 
                $('#contact_details').val(value['contactDetail']);
                $('#contact_person').val(value['contactPerson']);
                $('#address').val(value['address']);
                $('#affiliateId').val(value['id']); 
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
        var topicId = $(this).closest('tr').find('.edit_id').text();

        console.log(topicId);
        $('#delete_id').val(topicId);
        $('#deleteModal').modal('show'); 
    
    });
});
</script>
<?php

include('includes/footer.php');

?>