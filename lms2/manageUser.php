<?php
include('includes/header.php');
include('includes/sidebar.php');
?>
<div class="content-wrapper">
<div class=" grid-margin stretch-card ">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Default form</h4>
                        <p class="card-description">
                            Basic form layout
                        </p>
                        <form class="forms-sample row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter Name">
                            </div>
                            <div class="form-group">
                                <label for="phoneNumber">Phone Number</label>
                                <input type="text" class="form-control" name="phoneNumber" placeholder="Enter Phone Number">
                            </div>
                            
                            <div class="form-group">
                                <label for="userType">User Type</label>
                                <select class="form-control" name="userType">
                                    <option></option>
                                </select>            
                            </div>  
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="userId">User Id</label>
                                <input type="text" class="form-control" name="UserId" placeholder="Enter Address">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" name="address" placeholder="Enter Address"> </input>
                            </div>
                           
                            
                            </div>
                            <div class="text-center">
                            <button type="submit" class="btn btn-primary me-2">Submit</button>
                            <button class="btn btn-light">Cancel</button>
                            </div>
                        </form>
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