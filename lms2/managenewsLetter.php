<?php
include('includes/header.php');
include('includes/sidebar.php');


?>
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card ">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">NewsLetter</h4>
                    <form class="forms-sample row" action="functions/functions.php" method="POST"
                        enctype="multipart/form-data">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="name">Upload Attachment</label>
                                <input type="file" name="uploads" class="form-control" accept=".jpg, .jpeg, .png, .gif, .xls, .xlsx, .doc, .docx">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea class="rte" name="descriptions"></textarea>
                            </div>
                        </div>
                   </div>

                <div class="form-group text-center">
                    <button type="submit" class="btn btn-primary me-2" name="sending_email">Send</button>
                    <button type="reset" class="btn btn-light">Cancel</button>

                   </div>
                </form>
            </div>
        </div>
    </div>
</div>





<?php

include('includes/footer.php');

?>