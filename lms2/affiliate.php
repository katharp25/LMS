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
                    <h4 class="card-title">Affiliate Page</h4>
                    <!-- <p class="card-description">
                        You can Write the content for about page.
                    </p> -->
                   
                    <form class="forms-sample row">
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
                        <!-- <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" class="form-control-file" id="image" accept="image/*">
                        </div> -->
                        <!-- <div class="form-group">
                            <label for="writer">Writer</label>
                            <input type="text" class="form-control" name="writer"
                                placeholder="Enter Title For About Section">
                        </div> -->
                        <!-- <div class="form-group">
                            <label for="desc">Description</label>
                            <textarea class="richtext" name="desc">
                                        Welcome to Saburi LMS
                                    </textarea>
                        </div> -->
                        <!-- <div class="form-group">
                            <label for="banner_image">Banner Image</label>
                            <input type="file" class="form-control-file" id="banner_image" accept="image/*">
                        </div> -->

                        <button type="submit" class="btn btn-primary me-2">Submit</button>
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
                                <th> Company Name </th>
                                <th>Details</th>
                                <th>Contact Details</th>
                                <th>Contact Person</th>
                                <th>Address</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Glansa</td>
                                
                                <td>xyz</td>
                                <td>888888888</td>
                                <td>pk</td>
                                <td>hyb</td>
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