<?php
include('includes/header.php');
include('includes/sidebar.php');
include('functions/list_grid.php');
?>
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card ">
            <div class="card">
                <div class="card-body">
                <h4 class="card-title">Topic Details</h4>
                    <form class="forms-sample row" action="functions/functions" method="POST">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name"> Topic Name</label>
                                <input type="text" class="form-control" name="topic" placeholder="Enter Topic Name">
                            </div>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary me-2" name="topic_manage">Submit</button>
                            <button class="btn btn-light">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Topics</h4>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Topic Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if($fetch_list_topic_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_topic_query))
                                {
                                    $topic_name=$row['topicName'];
                                    ?>
                                    <tr>
                                    <td><?= $i;?></td>
                                    <td><?= $topic_name; ?></td>
                                    <td>
                                        <button type="submit" class="btn btn-primary me-2 p-2">Edit</button>
                                        <button class="btn btn-danger p-2">Delete</button>
                                    </td>
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
<?php

include('includes/footer.php');

?>