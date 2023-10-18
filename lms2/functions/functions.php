<?php
include('config.php');

// Admin Login

if(isset($_POST['login_admin'])){

    $name = $_POST['admin_name'];
    $password = $_POST['admin_password'];

    mysqli_real_escape_string($con,$name);
    mysqli_real_escape_string($con,$password);
    $user_sql = mysqli_query($con, "SELECT * FROM users WHERE Name='$name'");
    $fetch_user_sql = mysqli_fetch_assoc($user_sql);

    if ($fetch_user_sql) { // Check if a matching user was found
        $user_name = $fetch_user_sql['Name'];
        $pwd = $fetch_user_sql['Password'];
        if($password === $pwd)
        {
            header("location: $mainlink"."dashboard");
        }else{
            $_SESSION['message']="Wrong Username or Password";
            header("location: $mainlink"."404");
        }
        
        // You can now use $user_name and $password as needed
    } else {
        
        // Handle the case where no user with the specified 'Name' was found
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
    $pwd = $_POST['pwd'];
    $address = $_POST['address'];
    
    $insert_query=mysqli_query($con,"INSERT INTO users(Name,Email,Phone,Address,UserType,UserId,Password) VALUES('$name','$email','$phoneNumber','$address','$userType','$uid','$pwd')");

    if($insert_query){
        header("location: $mainlink"."manageUser");
    }else{
        echo "not done";
    }
}
else{
    echo "not coming";
}




?>