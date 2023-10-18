<?php
include('config.php');


// fetching list of Users to users module

$fetch_list_query=mysqli_query($con,"SELECT * FROM users");
// $fetch_list=mysqli_fetch_assoc($fetch_list_query);
// $users_name=$fetch_list['Name'];
// echo $users_name;



?>