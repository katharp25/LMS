<?php
include('includes/header.php');
include('includes/sidebar.php');
?>

<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Newsletter List</h4>
                    <div class="table-responsive">
                        <table id="example1" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>S.no</th>
                                    <th>Email</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <?php
                                if ($fetch_user_newsletter_query) {
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($fetch_user_newsletter_query)) {
                                        $id = $row['id'];
                                        $email = $row['email'];
                                        
                                        
                                ?>
                                        <tr>
                                            <td><?= $i; ?></td>
                                            <td><?= $email; ?></td>
                                            <td><button type="submit" class="btn btn-success">Send</button></td>
                                            
                                           
                                
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
</div>

<?php
include('includes/footer.php');
?>
