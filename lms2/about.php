<?php
include('includes/header.php');
include('includes/sidebar.php');
?>


<!-- Main Content Panel -->
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">About Page</h4>
                    <p class="card-description">
                        You can Write the content for about page.
                    </p>
                   
                    <form class="forms-sample">
                        <div class="form-group">
                            <label for="banner_title">Title</label>
                            <input type="text" class="form-control" id="exampleInputUsername1"
                                placeholder="Enter Title For About Section">
                        </div>
                        <div class="form-group">
                            <label for="banner_desc">Description</label>
                            <textarea>
                                        Welcome to Saburi LMS
                                    </textarea>
                        </div>
                        <!-- <div class="form-group">
                            <label for="banner_image">Banner Image</label>
                            <input type="file" class="form-control-file" id="banner_image" accept="image/*">
                        </div> -->

                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Banner list</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Banner</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><img src="images/saburi.png" class="img-fluid w-50" /></td>
                                <td>Saburi Educations</td>
                                <td style="white-space: wrap;">Lorem ipsum dolor sit amet consectetur adipisicing
                                    elit. Facilis excepturi perferendis</td>
                                <td><button type="submit" class="btn btn-primary me-2 p-2">Edit</button>
                                    <button class="btn btn-danger p-2">Delete</button>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><img src="images/faces/face1.jpg" class="img-fluid w-50" /></td>
                                <td>Saburi Educations</td>
                                <td style="white-space: wrap;">Lorem ipsum dolor sit amet consectetur adipisicing
                                    elit. Facilis excepturi perferendis</td>
                                <td><button type="submit" class="btn btn-primary me-2 p-2">Edit</button>
                                    <button class="btn btn-danger p-2">Delete</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div> -->

    </div>
</div>
<!-- Main Content ends -->

<?php

include('includes/footer.php');

?>