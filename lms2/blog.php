<?php
include('includes/header.php');
include('includes/sidebar.php');
include('functions/list_grid.php');
?>

<style>
        .tag-container {
            display: flex;
            flex-wrap: wrap;
        }
        .tag {
            background-color: #0073e6;
            color: #fff;
            padding: 5px 10px;
            margin: 5px;
            border-radius: 5px;
            display: flex;
            align-items: center;
        }
        .tag-text {
            margin-right: 5px;
        }
        .tag-remove {
            cursor: pointer;
        }
        ul{
            background-color:#eee;
            cursor:pointer;
        }
        li{
            padding:12px;
        }
    </style>
<!-- Main Content Panel -->
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Blog Page</h4>
                    <!-- <p class="card-description">
                        You can Write the content for about page.
                    </p> -->
                   
                    <form class="forms-sample" action="functions/functions" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title"
                                placeholder="Enter Blog Title">
                        </div>
                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" class="form-control-file" id="image" name="image" accept="image/*">
                        </div>
                        <div class="form-group">
                            <label for="writer">Writer</label>
                            <input type="text" class="form-control" name="writer"
                                placeholder="Enter Writer Name">
                        </div>
                        <div class="form-group">
                            <label for="desc">Description</label>
                            <textarea class="richtext" name="desc">
                                        Welcome to Saburi LMS
                                    </textarea>
                        </div>
                        <div class="form-group">
                         <div class="container">
                            <label for="desc">Tags</label>
                            <input type="text" id="tags" name="tags" class="form-control" placeholder="Add a tag" >
                            <div id="taglist"></div>
                        </div>
                    </div>
                    

                        <button type="submit" class="btn btn-primary me-2" name="blog_manage">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Blog list</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th hidden>ID</th>
                                <th>Title</th>
                                <th> Writer </th>
                                <th>Image</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if($fetch_list_blog_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_blog_query))
                                {
                                    $id = $row['id'];
                                    $title=$row['blogTitle'];
                                    $writer=$row['writer'];
                                    $image=$row['bannerImage'];
                                    $description=$row['description'];
                                    
                                    ?>
                                    <tr>
                                    <td><?= $i;?></td>
                                    <td class="blogId" hidden><?= $id;?>
                                    <td><?= $title; ?></td>
                                    <td><?= $writer; ?></td>
                                    <td><?= $image; ?></td>
                                    <td><?= $description; ?></td>
                                   
                                    <td>
                                    <button type="button" class="btn btn-primary p-2 edit-button" data-bs-toggle="modal" data-bs-target="#editBlogModal"  data-blog-id="<?= $id ?>">
                                        edit
                                    </button>

                                        <button class="btn btn-danger p-2 delete-button" data-bs-toggle="modal" data-bs-target="#deleteBlogModal"  data-blog-id="<?= $id ?>">Delete</button>
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
</div> -->


<!-- Modal for editing blog content -->
<div class="modal fade" id="editBlogModal" tabindex="-1" role="dialog" aria-labelledby="editBlogModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBlogModalLabel">Edit Blog</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" action="./functions/functions.php">
              <div class="modal-body">
                <!-- Form for editing the blog content -->
                
                    <input type ="hidden" id="blog_id" name="blog_id">
                      <div class="form-group">
                        <label for="editTitle">Title</label>
                        <input type="text" class="form-control" id="editTitle" name="editTitle">
                    </div>
                    <div class="form-group">
                        <label for="editWriter">Writer</label>
                        <input type="text" class="form-control" id="editWriter" name="editWriter">
                    </div>
                    <div class="form-group">
                        <label for="editImage">Image</label>
                        <input type="file" class="form-control-file" id="editImage" name="editImage" accept="image/*">
                    </div>
                    <div class="form-group">
                        <label for="editDescription">Description</label>
                        <textarea class="form-control" id="editDescription" name="editDescription"></textarea>
                    </div>
                    <!-- Additional fields for tags, if needed -->
                    <!-- Add hidden input fields for blog ID or other necessary data -->
                
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="saveChanges" name="update">Save Changes</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal for delete confirmation -->
<div class="modal fade" id="deleteBlogModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteConfirmationModalLabel">Confirm Deletion</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="delete_blog.php" method="POST">

            <div class="modal-body">

                <input type="text" id="delete_id" name="delete_id">
                Are you sure you want to delete this record?
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-danger" name="delete_blog" id="delete_blog">Delete</button>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function()
    {
        $('#tags').keyup(function()
        {
            var tag = $(this).val();
            // alert(tag);
            if(tag != '')
            {
                $.ajax({
                    url : "./search.php",
                    method:"POST",
                    data:{tag:tag},
                    success:function(data)
                    {
                        $('#taglist').fadeIn();
                        $('#taglist').html(data);

                    }
                });
            }
            else{
                $('#taglist').fadeOut();
                $('#taglist').html("");
            }
        });
        $(document).on('click','li',function()
        {
            $('tags').val($(this).text());
            $('#taglist').fadeOut();
        });
    });
</script>

<script>

$(document).ready(function() {
    $('.edit-button').on('click', function() {
        var blogId = $(this).closest('tr').find('.blogId').text();
        // console.log(blogId);
        $.ajax({
        type: 'POST',
        url: './functions/functions.php', // Replace with the URL of your server-side script
        data: { 
            'checking_edit_btn' : true,
             'blog_id': blogId, },
        // dataType: 'json',
        success: function(response) {
            console.log(response);
            $.each(response, function (key, value)
            {
                $('#editTitle').val(value['blogTitle']);
                $('#editWriter').val(value['writer']);
                // You can handle image display or updating as needed
                $('#editDescription').val(value['description']);
                $('#blog_id').val(value['id']); 
            
            
                $('#editBlogModal').modal('show'); 
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
        var blogId = $(this).closest('tr').find('.blogId').text();

        console.log(blogId);
        $('#delete_id').val(blogId);
        $('#deleteBlogModal').modal('show'); 
    
    });
});
</script>

<!-- Main Content ends -->

<?php

include('includes/footer.php');

?>