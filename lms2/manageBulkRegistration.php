<?php
include('includes/header.php');
include('includes/sidebar.php');
?>

<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Bulk Registration</h4>
                    <div class="table-responsive">
                        <table id="example2" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>S.no</th>
                                    <th>Company Name</th>
                                    <th>Contact Name</th>
                                    <th>Company Mobile</th>
                                    <th>Email</th>
                                    <th>Address</th>
                                    <th>District</th>
                                    <th>Country Name</th>
                                    <th>State</th>
                                    <th>Pincode</th>
                                    <th>Id Proof</th>
                                    <th>Id Proof Details</th>     
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <?php
                                if ($fetch_list_company_query) {
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($fetch_list_company_query)) {
                                        $id = $row['id'];
                                        $companyName = $row['companyName'];
                                        $contactName = $row['contactName'];
                                        $companyPhone = $row['companyPhone'];
                                        $email = $row['email'];
                                        $address = $row['address'];
                                        $district = $row['district'];
                                        $country_id = $row['country_name'];
                                        $state = $row['state'];
                                        $pinCode = $row['pincode'];
                                        $idProof = $row['idProof'];
                                        $idProofDetails = $row['idProofDetails'];
                                        // $id = $row['id'];
                                ?>
                                        <tr>
                                            <td><?= $i; ?></td>
                                            <td><?= $companyName; ?></td>
                                            <td><?= $contactName; ?></td>
                                            <td><?= $companyPhone; ?></td>
                                            <td><?= $email; ?></td>
                                            <td><?= $address; ?></td>
                                            <td><?= $district; ?></td>
                                            <td><?= $country_id; ?></td>
                                            <td><?= $state; ?></td>
                                            <td><?= $pinCode; ?></td>
                                            <td><?= $idProof; ?></td>
                                            <td><?= $idProofDetails; ?></td>
                                            
                                
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
