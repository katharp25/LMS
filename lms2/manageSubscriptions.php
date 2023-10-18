<?php
include('includes/header.php');
include('includes/sidebar.php');
?>
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
                    <form class="forms-sample row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name"> Subscription Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter Subscription Name">
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
                            <button type="submit" class="btn btn-primary me-2">Submit</button>
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
                            <tr>
                                <td>1</td>
                                <td>xyz</td>
                                <td>gold</td>   
                                <td>9999</td>
                                <td> 3 Months </td>
                                <td> 101 </td>
                                <td>
                                    <button type="submit" class="btn btn-primary me-2 p-2">Edit</button>
                                    <button class="btn btn-danger p-2">Delete</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Content ends -->

<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col">

            </div>
            <div class="col"></div>
        </div>
    </div>
</body>
</html> -->

<?php

include('includes/footer.php');

?>