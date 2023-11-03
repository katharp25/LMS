<?php
include('includes/header.php');
include('includes/sidebar.php');
?>

<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">User Contact List</h4>
                    <div class="table-responsive">
                        <table id="example1" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>S.no</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Message</th>
                                    <th>Subject</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <?php
                                if ($fetch_user_contact_query) {
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($fetch_user_contact_query)) {
                                        $id = $row['id'];
                                        $name = $row['name'];
                                        $email = $row['email'];
                                        $subject = $row['subject'];
                                        $message = $row['message'];
                                        
                                ?>
                                        <tr>
                                            <td><?= $i; ?></td>
                                            <td><?= $name; ?></td>
                                            <td><?= $email; ?></td>
                                            <td><?= $message; ?></td>
                                            <td><?= $subject; ?></td>
                                           
                                
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
