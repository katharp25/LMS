<?php
include('config.php');

// Admin Login

if (isset($_POST['login_admin'])) {

    $name = $_POST['admin_name'];
    $password = $_POST['admin_password'];

    mysqli_real_escape_string($con, $name);
    mysqli_real_escape_string($con, $password);
    $user_sql = mysqli_query($con, "SELECT * FROM users WHERE Name='$name'");
    $fetch_user_sql = mysqli_fetch_assoc($user_sql);

    if ($fetch_user_sql) { // Check if a matching user was found
        $user_name = $fetch_user_sql['Name'];
        $pwd = $fetch_user_sql['Password'];
        if ($password === $pwd) {
            header("location: $mainlink" . "dashboard");
        } else {
            $_SESSION['message'] = "Wrong Username or Password";
            header("location: $mainlink" . "404");
        }

        // You can now use $user_name and $password as needed
    } else {

        // Handle the case where no user with the specified 'Name' was found
    }


    // if($password = )

    // header('location: ../dashboard');
} elseif (isset($_POST['user_manage'])) {
    $name = $_POST['name'];
    $phoneNumber = $_POST['phoneNumber'];
    $userType = $_POST['userType'];
    $email = $_POST['email'];
    $uid = $_POST['user_id'];
    $pwd = $_POST['pwd'];
    $address = $_POST['address'];

    $insert_query = mysqli_query($con, "INSERT INTO users(Name,Email,Phone,Address,UserType,UserId,Password) VALUES('$name','$email','$phoneNumber','$address','$userType','$uid','$pwd')");

    if ($insert_query) {
        header("location: $mainlink" . "manageUser");
    } else {
        echo "not done";
    }
}
//  else {
//     echo "not coming";
// }

elseif(isset($_POST['topic_manage'])){
    $topic = $_POST['topic'];
    $currentDate = date("Y-m-d H:i:s"); 
    $insert_query = mysqli_query($con, "INSERT INTO topics(topicName,createdOn) VALUES('$topic','$currentDate')");

    if ($insert_query) {
        header("location: $mainlink" . "topic");
    } else {
        echo "not done";
    }

}elseif(isset($_POST['subtopic_manage'])){
    $topic = $_POST['topic'];
    $subtopic = $_POST['subtopic'];
    $currentDate = date("Y-m-d H:i:s"); 
    $insert_query = mysqli_query($con, "INSERT INTO subtopics (topicId,subTopicName,createdOn) VALUES('$topic','$subtopic','$currentDate')");

    if ($insert_query) {
        header("location: $mainlink" . "subtopic");
        // echo "hii";
    } else {
        echo "not done";
        echo $topic, $subtopic,$currentDate ;
    }
} elseif (isset($_POST['course_manage'])) {
    $topic = $_POST['topic'];
    $subtopic = $_POST['subtopic'];
    $courseName = $_POST['courseName'];
    $price = $_POST['price'];
    // $image = $_POST['image'];
    // Handle image upload
    if (isset($_FILES['image'])) {
        $imageFile = $_FILES['image'];
        $imageFileName = $imageFile['name'];
        // Process and move the image file to your desired location
        move_uploaded_file($imageFile['tmp_name'], 'upload/image/' . $imageFileName);
    }
    // $uploadfile = $_POST['uploadfile'];
     // Handle file upload
     if (isset($_FILES['uploadfile'])) {
        $uploadFile = $_FILES['uploadfile'];
        $uploadFileName = $uploadFile['name'];
        // Process and move the upload file to your desired location
        move_uploaded_file($uploadFile['tmp_name'], 'upload/file/' . $uploadFileName);
    }
    // $uploadfile = isset($_POST['uploadfile']) ? $_POST['uploadfile'] : '';
    // $video = $_POST['video'];
    // Handle video upload
    if (isset($_FILES['video'])) {
        $videoFile = $_FILES['video'];
        $videoFileName = $videoFile['name'];
        // Process and move the video file to your desired location
        move_uploaded_file($videoFile['tmp_name'], 'upload/video/' . $videoFileName);
    }
    // $video = isset($_POST['video']) ? $_POST['video'] : '';
    // $desc = $_POST['desc'];
    $desc = isset($_POST['desc']) ? $_POST['desc'] : '';
    $learn = $_POST['learnMore'];
    $requirements = $_POST['requirementsMore'];
    $tag = $_POST['tag'];
    
    echo $learn;
    echo $requirements;


    $insert_query = mysqli_query($con, "INSERT INTO courses(topicID ,subTopicId ,courseName,courseCost,bannerImage,uploadfile,video,courseDesc,learn,requirements,tag) VALUES('$topic','$subtopic','$courseName','$price','$imageFileName','$uploadFileName','$videoFileName','$desc','$learn','$requirements','$tag')");

    if ($insert_query) {
        header("location: $mainlink" . "manageCourse");
    } else {
        echo "not done";
    }
}elseif (isset($_POST['subscription_manage'])){
    $subscription = $_POST['subscription'];
    $type = $_POST['type'];
    $price = $_POST['price'];
    $duration = $_POST['duration'];
    $courseName = $_POST['courseName'];

    $insert_query = mysqli_query($con, "INSERT INTO subscriptions_1(subscription, type, price, duration,courseName) VALUES('$subscription','$type','$price','$duration','$courseName')");

    if ($insert_query) {
        header("location: $mainlink" . "manageSubscriptions");
    } else {
        echo "not done";
    }
}elseif (isset($_POST['blog_manage'])){
    $title = $_POST['title'];
    if (isset($_FILES['image'])) {
        $imageFile = $_FILES['image'];
        $imageFileName = $imageFile['name'];
        // Process and move the image file to your desired location
        move_uploaded_file($imageFile['tmp_name'], 'upload/image/' . $imageFileName);
    }
    $writer = $_POST['writer'];
    $desc = $_POST['desc'];

    $insert_query = mysqli_query($con, "INSERT INTO blogs(blogTitle, bannerImage, writer, description) VALUES('$title','$imageFileName ','$writer','$desc')");

    if ($insert_query) {
        header("location: $mainlink" . "blog");
    } else {
        echo "not done";
    }
  
}elseif (isset($_POST['freeResources_manage'])){
    $heading = $_POST['heading'];
    $title = $_POST['title'];
    if (isset($_FILES['image'])) {
        $imageFile = $_FILES['image'];
        $imageFileName = $imageFile['name'];
        // Process and move the image file to your desired location
        move_uploaded_file($imageFile['tmp_name'], 'upload/image/' . $imageFileName);
    }
    // $writer = $_POST['writer'];
    $desc = $_POST['desc'];

    $insert_query = mysqli_query($con, "INSERT INTO freeresources(resourcesName, title, bannerImage,description) VALUES('$heading', '$title', '$imageFileName','$desc')");

    if ($insert_query) {
        header("location: $mainlink" . "freeResources");
    } else {
        echo "not done";
    }
}elseif (isset($_POST['affiliate_manage'])){
    $name = $_POST['name'];
    $details = $_POST['details'];
    $contactdetails = $_POST['contactdetails'];
    $contactPerson = $_POST['contactPerson'];
    $address = $_POST['address'];


    $insert_query = mysqli_query($con, "INSERT INTO affiliates(companyName, details, contactDetail, contactPerson, address) VALUES('$name', '$details', '$contactdetails','$contactPerson','$address')");

    if ($insert_query) {
        header("location: $mainlink" . "affiliate");
    } else {
        echo "not done";
    }
}elseif (isset($_POST['career_manage'])){
    $title = $_POST['title'];
    $exp = $_POST['exp'];
    $desc = $_POST['desc'];
   
    $insert_query = mysqli_query($con, "INSERT INTO careers(Title, Experience, Description) VALUES('$title', '$exp', '$desc')");

    if ($insert_query) {
        header("location: $mainlink" . "career");
    } else {
        echo "not done";
    }
}elseif (isset($_POST['corporateGovernance_manage'])){
    $title = $_POST['title'];
    if (isset($_FILES['image'])) {
        $imageFile = $_FILES['image'];
        $imageFileName = $imageFile['name'];
        // Process and move the image file to your desired location
        move_uploaded_file($imageFile['tmp_name'], 'upload/image/' . $imageFileName);
    }
    $name = $_POST['name'];
   
    $insert_query = mysqli_query($con, "INSERT INTO corporategovernance(title, image, name) VALUES('$title', '$imageFileName', '$name')");

    if ($insert_query) {
        header("location: $mainlink" . "corporateGovernance");
    } else {
        echo "not done";
    }
}