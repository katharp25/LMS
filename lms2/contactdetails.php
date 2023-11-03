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
                    <h4 class="card-title">Contact Details Page</h4>
                    <!-- <p class="card-description">
                        You can Write the content for about page.
                    </p> -->
                   
                    <form class="forms-sample" method="POST" action="./functions/functions.php">
                        <div class="form-group">
                            <label for="title">Email</label>
                            <input type="email" class="form-control" name="email"
                                placeholder="Enter Email">
                        </div>
                        <div class="form-group">
                            <label for="image">phone Number</label>
                            <input type="text" class="form-control" name="phone_no" >
                        </div>
                       
                        <div class="form-group">
                            <label for="desc">Address</label>
                            <textarea class="rte" name="address">    
                                    </textarea>
                        </div>
                        <!-- <div class="form-group">
                            <label for="banner_image">Banner Image</label>
                            <input type="file" class="form-control-file" id="banner_image" accept="image/*">
                        </div> -->

                        <button type="submit" class="btn btn-primary me-2" name="contact_details">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Contact Details  list</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Title</th>
                                <!-- <th> Writer </th> -->
                                <th>Image</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Saburi Educations</td>
                                
                                <!-- <td>xyz</td> -->
                                <td><img src="images/saburi.png" class="img-fluid w-50" /></td>
                                <td style="white-space: wrap;">Lorem ipsum dolor sit amet consectetur adipisicing
                                    elit. Facilis excepturi perferendis</td>
                                <td><button type="submit" class="btn btn-primary me-2 p-2">Edit</button>
                                    <button class="btn btn-danger p-2">Delete</button>
                                </td>
                            </tr>
                            <!-- <tr>
                                <td>2</td>
                                <td><img src="images/faces/face1.jpg" class="img-fluid w-50" /></td>
                                <td>Saburi Educations</td>
                                <td style="white-space: wrap;">Lorem ipsum dolor sit amet consectetur adipisicing
                                    elit. Facilis excepturi perferendis</td>
                                <td><button type="submit" class="btn btn-primary me-2 p-2">Edit</button>
                                    <button class="btn btn-danger p-2">Delete</button>
                                </td>
                            </tr> -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- Main Content ends -->

<?php

include('includes/footer.php');

?>