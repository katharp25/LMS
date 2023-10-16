<?php
include('includes/header.php');
include('includes/sidebar.php');
?>
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card ">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Topic Details</h4>
                    <!-- <h4 class="card-title">Default form</h4>
                        <p class="card-description">
                            Basic form layout
                        </p> -->
                    <form class="forms-sample row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name"> Topic Name</label>
                                <input type="text" class="form-control" name="topic" placeholder="Enter Topic Name">
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
                        <!-- <div class="col-md-6">
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
                                <textarea type="text" class="form-control" name="address" placeholder="Enter Address"> </textarea>
                            </div>


                        </div> -->
                        <div>
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
                    <h4 class="card-title">Manage User</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Topic Name</th>
                                <!-- <th>Email</th>
                                <th>Phone</th>
                                <th>Address</th> -->
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>React JS </td>
                                <!-- <td>katharp24@gmail.com</td>    -->
                                <!-- <td style="white-space: wrap;">Lorem ipsum dolor sit amet consectetur adipisicing
                                    elit. Facilis excepturi perferendis</td> -->
                                <!-- <td> 8668275307 </td>
                                <td> Maharashtra </td> -->
                                <td>
                                    <button type="submit" class="btn btn-primary me-2 p-2">Edit</button>
                                    <button class="btn btn-danger p-2">Delete</button>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Java</td>
                                <!-- <td>vishal@gmail.com</td> -->
                                <!-- <td style="white-space: wrap;">Lorem ipsum dolor sit amet consectetur adipisicing
                                    elit. Facilis excepturi perferendis</td> -->
                                <!-- <td> 8888888888 </td> -->
                                <!-- <td> hyderabad </td> -->
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