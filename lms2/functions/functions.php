<?php
include('config.php');

// Admin Login

if(isset($_POST['login_admin'])){

    $name = $_POST['admin_email'];
    $password = $_POST['admin_password'];

    $fetch_sql_user=mysqli_query($con,"SELECT * from users where Email='$name' and Password='$password'");
    
    if($fetch_sql_user){
        header("location: $mainlink");

    }else{
        echo "not matched";
    }

    // if($password = )

    // header('location: ../dashboard');
}elseif(isset($_POST['user_manage']))
{
    $name = $_POST['name'];
    $phoneNumber = $_POST['phoneNumber'];
    $userType = $_POST['userType'];
    $email = $_POST['email'];
    $uid= $_POST['user_id'];
    // $pwd = $_POST['pwd'];
    $address = $_POST['address'];
    
    $insert_query=mysqli_query($con,"INSERT INTO users(Name,Email,Phone,Address,UserType,UserId) VALUES('$name','$email','$phoneNumber','$address','$userType','$uid')");

    if($insert_query){
        header("location: $mainlink/manageUser");
    }else{
        echo "not done";
    }
}
else{
    echo "not coming";
}




?>