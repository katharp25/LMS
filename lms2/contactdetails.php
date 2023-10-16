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
                    <h4 class="card-title">Contact Us Address</h4>
                    <p class="card-description">
                        You can write the address hear
                    </p>

                    <form class="forms-sample">
                        <div class="form-group">
                            <label for="banner_desc">Address</label>
                            <textarea class="richtext">
                                        Welcome to Saburi LMS
                                    </textarea>
                        </div>
                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">EMail Address</h4>
                    <p class="card-description">
                    Write emails no for contact page.
                    </p>

                    <form class="forms-sample">
                        <div class="form-group">
                            <label for="email1">Email 1</label>
                            <input type="email" class="form-control" id="email1" name="email1"
                                placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="email2">Email 2</label>
                            <input type="email" class="form-control" id="email2" name="email2"
                                placeholder="Enter email">
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Mobile Reach</h4>
                    <p class="card-description">
                    Write mobile no for contact page.
                    </p>

                    <form class="forms-sample">
                        <div class="form-group">
                            <label for="mobile1">Mobile No 1</label>
                            <input type="phone" class="form-control" id="mobile1" name="mobile1"
                                placeholder="Enter Mobile / Landline No">
                        </div>
                        <div class="form-group">
                            <label for="mobile2">Mobile No 2</label>
                            <input type="phone" class="form-control" id="mobile2" name="mobile2"
                                placeholder="Enter Mobile / Landline No">
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- Main Content ends -->

<?php

include('includes/footer.php');

?>