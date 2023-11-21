<?php
// //session_start();
include('config.php');
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;



// Start Fetching Admin Login

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

// Start inserting user 
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

// End Inserting User

// Start Fetching User

elseif (isset($_POST['checking_user_btn'])) {
    $userId = $_POST['user_id'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT * FROM `users` WHERE Id = $userId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}
// End Fetching User

// Start Updating User

elseif(isset($_POST['update_student_register']))
{
    // Assuming 'id' is a hidden input in the form to identify the student
    $id = $_POST['id']; 
    $fullName = $_POST['fullName'];
    $DOB = $_POST['DOB'];
    $address = $_POST['address'];
    $state = $_POST['state'];
    $pincode = $_POST['pincode'];
    $gender = $_POST['gender'];
    $phoneNumber = $_POST['phoneNumber'];
    $email = $_POST['email'];
    $idProof = $_POST['idProof'];
    $idProofDetails = $_POST['idProofDetails'];
    
    // Update query
    $update_query = "UPDATE students SET 
                    name = '$fullName',
                    DOB = '$DOB',
                    address = '$address',
                    state = '$state',
                    pincode = '$pincode',
                    gender = '$gender',
                    phoneNumber = '$phoneNumber',
                    email = '$email',
                    idProof = '$idProof',
                    idProofDetails = '$idProofDetails'
                    WHERE id = $id";
    $query = mysqli_query($con, $update_query);

    if($query)
    {
        header("location: $mainlink" . "web/profile.php");
    }
    else{
        echo "not working";
    }
}


elseif(isset($_POST['update_user']))
{
    $id = $_POST['user_id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];

    $update_topic = "UPDATE users set Name = '$name',Email = '$email',Phone = '$phone',Address = '$address' WHERE id='$id'";
    $query = mysqli_query($con, $update_topic);

    if($query)
    {
        header("location: $mainlink" . "manageUser");
    }
    else{
        echo "not working";
    }
}
// elseif(isset($_POST['update_password']))
// {

//     $oldPassword = $_POST['oldPassword'];
//     $newPassword = $_POST['newPassword'];
//     $confirmPassword = $_POST['confirmPassword'];
//     // loggedInUserId = $_SESSION[''];
//     $query = "SELECT password FROM users WHERE id = 12";
//     $result = mysqli_query($con, $query);
//     $user = mysqli_fetch_assoc($result);

//     if (password_verify($oldPassword, $user['password']) && $newPassword === $confirmPassword){

//         $hashedPassword = password_hash($newPassword, PASSWORD_DEFAULT);
//         // $updateQuery = "UPDATE users SET password = '$hashedPassword' WHERE id = $loggedInUserId";
//         $updateQuery = "UPDATE users SET password = '$hashedPassword' WHERE id = 12";

//         $query = mysqli_query($con, $update_topic);

//     if($query)
//     {
//         header("location: $mainlink" . "dashboard");
//     }
//     else{
//         echo "not working";
//     }
//     }else {
//         echo "Old password is incorrect or new passwords do not match!";
//     }

//     // $update_topic = "UPDATE users set Name = '$name',Email = '$email',Phone = '$phone',Address = '$address' WHERE id='$id'";
    
// }

// Start Inserting topic 
elseif(isset($_POST['topic_manage'])){
    $topic = $_POST['topic'];
    $currentDate = date("Y-m-d H:i:s"); 
    $insert_query = mysqli_query($con, "INSERT INTO topics(topicName,createdOn) VALUES('$topic','$currentDate')");

    if ($insert_query) {
        header("location: $mainlink" . "topic");
    } else {
        echo "not done";
    }
}
// End Inserting topic

// Start Fetching Topic

elseif (isset($_POST['checking_topic_btn'])) {
    $topic_id = $_POST['topicId'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT * FROM `topics` WHERE Id = $topic_id";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}

// End Fetching Topic

// Start Updating Topic
elseif(isset($_POST['update_topic']))
{
    $id = $_POST['topicId'];
    $topic_name = $_POST['topic_name'];

    $update_topic = "UPDATE topics set topicName='$topic_name' WHERE Id='$id'";
    $query = mysqli_query($con, $update_topic);

    if($query)
    {
        header("location: $mainlink" . "topic");
    }
    else{
        echo "not working";
    }
}
// End Updateing Topic

// Start Inserting SubTopic 
elseif(isset($_POST['subtopic_manage'])){
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
}
// End Inserting SubTopic

// Start Inserting Course

elseif (isset($_POST['course_manage'])) {
    $topic = $_POST['topic'];
    $subtopic = $_POST['subtopic'];
    $courseName = $_POST['courseName'];
    $price = $_POST['price'];
    $summary = $_POST['Summary'];
    $desc = $_POST['description'];
    $wyl = $_POST['wyl'];
    $requirements = $_POST['req'];
    // echo $learn;
    // echo $requirements;
    // echo "<pre>";
    // echo "$topic";
    // echo "$subtopic";
    // echo "$courseName";
    // echo "$price";
    // echo "$summary";
    // echo "$desc";
    // echo "$wyl";
    // echo "$requirements";


    // exit();
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
    // $desc = isset($_POST['desc']) ? $_POST['desc'] : '';
    // $learn = $_POST['learnMore'];
    // $requirements = $_POST['requirementsMore'];
    // $tag = $_POST['tag'];
    
    
    $insert_course = mysqli_query($con,"INSERT INTO courses(topicID,subTopicId,courseName,courseCost,courseDesc,learn,summary,requirements,bannerImage,uploadfile,video) VALUES('$topic','$subtopic','$courseName','$price','$desc','$wyl','$summary','$requirements','$imageFileName','$uploadFileName','$videoFileName')");
    // $insert_query = mysqli_query($con, "INSERT INTO courses(topicID ,subTopicId ,courseName,courseCost,bannerImage,uploadfile,video,courseDesc,learn,summary,requirements) VALUES('$topic','$subtopic','$courseName','$price','$imageFileName','$uploadFileName','$videoFileName','$desc','$wyl','$summary','$requirements')");

    if ($insert_course) {
        header("location: $mainlink" . "manageCourse");
    } else {
        echo "not done";
    }
}
// End Inserting Code

// Start Fetching Course

elseif (isset($_POST['checking_course_btn'])) {
    $courseId = $_POST['course_id'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT * FROM `courses` WHERE id = $courseId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}
// End Fetching Course

// Start Inserting Subscriptions
elseif (isset($_POST['subscription_manage'])){
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
}

// End Inserting Subscription 

// Start Fetching Subscription

elseif (isset($_POST['checking_subscription_btn'])) {
    $subscriptionId = $_POST['subscription_id'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT * FROM `subscriptions_1` WHERE id = $subscriptionId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}

// End Fetching Subscription

// Start Updating Subscription

elseif(isset($_POST['update_subscription']))
{
    $id = $_POST['subscription_id'];
    $name = $_POST['editname'];
    $type = $_POST['edittype'];
    $price = $_POST['editprice'];
    $duration = $_POST['editduration'];
    $courseId = $_POST['courseId'];

    $update = "UPDATE subscriptions_1 set subscription='$name', type ='$type', price='$price', duration='$duration', courseName='$courseId' WHERE id='$id'";
    $query = mysqli_query($con, $update);

    if($query)
    {
        header("location: $mainlink" . "manageSubscriptions");
    }
    else{
        echo "not working";
    }
}
// End Upadating Subscription
elseif (isset($_POST['blog_manage'])) {
    // Process the form data as needed
    $title = $_POST['title'];
    if (isset($_FILES['image'])) {
        $imageFile = $_FILES['image'];
        $imageFileName = $imageFile['name'];
        // Process and move the image file to your desired location
        move_uploaded_file($imageFile['tmp_name'], 'upload/image/blogImage/' . $imageFileName);
    }
    $writer = $_POST['writer'];
    $desc = $_POST['desc'];
    // $category = $_POST['category'];
    // $created_on = $_POST['created_on'];

    // Insert the blog into the database and get the blog ID
    $insert_query = mysqli_query($con, "INSERT INTO blogs(blogTitle, bannerImage, writer, description,createdOn) VALUES('$title','$imageFileName','$writer','$desc',NOW())");
    
    // Get the ID of the newly inserted blog
    $blogId = mysqli_insert_id($con);

    // Check if tags have been provided
   if (isset($_POST['tags'])) {
    $tags = $_POST['tags'];

    // Split the comma-separated tags string into an array
    $tagsArray = explode(',', $tags);

    foreach ($tagsArray as $tag) {
        $tag = mysqli_real_escape_string($con, trim($tag)); // Remove leading/trailing whitespace
        $insertTagQuery = "INSERT INTO blogtag (name, blog_id) VALUES ('$tag', $blogId)";
        mysqli_query($con, $insertTagQuery);
    }

    header("location: $mainlink" . "blog");
} else {
    echo "Tag insertion failed";
}
}elseif (isset($_POST['checking_edit_btn'])) {
    $blogId = $_POST['blog_id'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT * FROM `blogs` WHERE id = $blogId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}
elseif(isset($_POST['update'])) {
    $id = $_POST['blog_id'];
    $title = mysqli_real_escape_string($con, $_POST['editTitle']);
    $writer = mysqli_real_escape_string($con, $_POST['editWriter']);
    $description = mysqli_real_escape_string($con, $_POST['editDescription']);

    if(isset($_FILES['editImage']['tmp_name']) && !empty($_FILES['editImage']['tmp_name'])) {
        // Handle the new image upload
        $newImage = mysqli_real_escape_string($con, $_FILES['editImage']['name']);
        $imagePath = "upload/image/" . $newImage; // Update with your actual image upload path
        move_uploaded_file($_FILES['editImage']['tmp_name'], $imagePath);
    } else {
        // No new image uploaded, keep the old image
        $newImage = mysqli_real_escape_string($con, $_POST['oldImage']); // This should be the filename of the old image
    }

    // Debugging: print the values to check if they are correct
    echo "Title: $title<br>";
    echo "Writer: $writer<br>";
    echo "Description: $description<br>";
    echo "New Image: $newImage<br>";

    $update = "UPDATE blogs SET blogTitle='$title', writer ='$writer', description='$description'";

    if (!empty($newImage)) {
        // If a new image is provided, include it in the update statement
        $update .= ", bannerImage='$newImage'";
    }

    $update .= " WHERE id='$id'";

    $query = mysqli_query($con, $update);

    if($query) {
        header("location: $mainlink" . "blog");
    } else {
        echo "not working";
    }
}





elseif (isset($_POST['freeResources_manage'])){
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
}
    elseif (isset($_POST['checking_resource_btn'])) {
        $resource_id = $_POST['resource_id'];
        $result_array = [];
    
        // Prepare and execute a query to fetch the blog data by ID
        $query = "SELECT * FROM `freeresources` WHERE id = $resource_id";
        $query_run = mysqli_query($con, $query);
        if(mysqli_num_rows($query_run) > 0)
        {
            foreach($query_run as $row)
            {
                array_push($result_array, $row);
                header('Content-type: application/json');
                echo json_encode($result_array);
            }
        }
        else{
            echo $return = "<h5>No Record Found</h5>";
        }
    }
//     elseif(isset($_POST['update_resources']))
// {
//     $id = $_POST['resource_id'];
//     $resourcename = $_POST['resourses_name'];
//     $title = $_POST['title'];
//     $image = $_POST['banner_image'];
//     $description = $_POST['description'];

//     $update = "UPDATE freeresources set resourcesName='$resourcename', title ='$title', bannerImage='$image', description='$description' WHERE id='$id'";
//     $query = mysqli_query($con, $update);

//     if($query)
//     {
//         header("location: $mainlink" . "freeResources");
//     }
//     else{
//         echo "not working";
//     }
// }
if(isset($_POST['update_resources'])) {
    $id = $_POST['resource_id'];
    $resourcename = $_POST['resourses_name'];
    $title = $_POST['title'];
    $description = $_POST['description'];

    // Check if a new image has been uploaded
    if(isset($_FILES['banner_image']['tmp_name']) && !empty($_FILES['banner_image']['tmp_name'])) {
        // Handle the new image upload
        $newImage = $_FILES['banner_image']['name'];
        $imagePath = "upload/image/" . $newImage; // Update with your actual image upload path
        move_uploaded_file($_FILES['banner_image']['tmp_name'], $imagePath);
    } else {
        // No new image uploaded, keep the old image
        $imagePath = $_POST['oldImage']; // This should be the path to the old image
    }

    $update = "UPDATE freeresources SET resourcesName='$resourcename', title='$title', bannerImage='$imagePath', description='$description' WHERE id='$id'";
    $query = mysqli_query($con, $update);

    if($query) {
        header("location: $mainlink" . "freeResources");
    } else {
        echo "Update failed!";
    }
}


elseif (isset($_POST['affiliate_manage'])){
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
}
elseif (isset($_POST['checking_affiliate_btn'])) {
    $affiliateId = $_POST['affiliateId'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT * FROM `affiliates` WHERE id = $affiliateId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}
elseif(isset($_POST['update_affiliate']))
{
    $id = $_POST['affiliateId'];
    $company_name = $_POST['company_name'];
    $details = $_POST['details'];
    $contact_details = $_POST['contact_details'];
    $contact_person = $_POST['contact_person'];
    $address = $_POST['address'];
    
    
    $update = "UPDATE affiliates set companyName='$company_name', details ='$details', contactDetail='$contact_details', contactPerson='$contact_person', address='$address' WHERE id='$id'";
    $query = mysqli_query($con, $update);

    if($query)
    {
        header("location: $mainlink" . "affiliate");
    }
    else{
        echo "not working";
    }
}elseif (isset($_POST['career_manage'])){

    $selectedCategoryId = $_POST['selectedCategoryId'];
    $title = $_POST['title'];
    $exp = $_POST['exp'];
    $desc = $_POST['desc'];
   
    $insert_query = mysqli_query($con, "INSERT INTO careers(categoryId,Title, Experience, Description,createdOn) VALUES('$selectedCategoryId','$title', '$exp', '$desc',NOW())");

    if ($insert_query) {
        header("location: $mainlink" . "career");
    } else {
        echo "not done";
    }
}
    elseif (isset($_POST['checking_career_btn'])) {
        $careerId = $_POST['careerId'];
        $result_array = [];
    
        // Prepare and execute a query to fetch the blog data by ID
        $query = "SELECT * FROM `careers` WHERE id = $careerId";
        $query_run = mysqli_query($con, $query);
        if(mysqli_num_rows($query_run) > 0)
        {
            foreach($query_run as $row)
            {
                array_push($result_array, $row);
                header('Content-type: application/json');
                echo json_encode($result_array);
            }
        }
        else{
            echo $return = "<h5>No Record Found</h5>";
        }
    }
    elseif(isset($_POST['update_career']))
{
    $id = $_POST['careerId'];
    $title = $_POST['title'];
    $yoe = $_POST['yoe'];
    $description = $_POST['description'];
    
    
    $update = "UPDATE careers set Title='$title', Experience ='$yoe', Description='$description' WHERE id='$id'";
    $query = mysqli_query($con, $update);

    if($query)
    {
        header("location: $mainlink" . "career");
    }
    else{
        echo "not working";
    }
}
elseif (isset($_POST['corporateGovernance_manage'])){
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

elseif (isset($_POST['checking_cg_btn'])) {
    $careerId = $_POST['cgId'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT * FROM `corporategovernance` WHERE id = $careerId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}
// elseif(isset($_POST['update_cg']))
// {
//     $id = $_POST['cgId'];
//     $title = $_POST['title'];
//     $name = $_POST['name'];
//     $image = $_POST['image'];
    
    
//     $update = "UPDATE corporategovernance set Title='$title', name ='$name', image='$image' WHERE id='$id'";
//     $query = mysqli_query($con, $update);

//     if($query)
//     {
//         header("location: $mainlink" . "corporateGovernance");
//     }
//     else{
//         echo "not working";
//     }
// }
elseif(isset($_POST['update_cg'])) {
    $id = $_POST['cgId'];
    $title = mysqli_real_escape_string($con, $_POST['title']);
    $name = mysqli_real_escape_string($con, $_POST['name']);
    // $image = $_POST['image'];

    if(isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
        // Handle the new image upload
        $newImage = mysqli_real_escape_string($con, $_FILES['image']['name']);
        $imagePath = "upload/image/" . $newImage; // Update with your actual image upload path
        move_uploaded_file($_FILES['image']['tmp_name'], $imagePath);
    } else {
        // No new image uploaded, keep the old image
        $newImage = mysqli_real_escape_string($con, $_POST['oldImage']); // This should be the filename of the old image
    }
    // Check if a new image has been uploaded
    $update = "UPDATE corporategovernance SET Title='$title', name ='$name'";

    if (!empty($newImage)) {
        // If a new image is provided, include it in the update statement
        $update .= ", image='$newImage'";
    }

    $update .= " WHERE id='$id'";

    $query = mysqli_query($con, $update);


    // $update = "UPDATE corporategovernance SET Title='$title', name='$name', image='$imagePath' WHERE id='$id'";
    // $query = mysqli_query($con, $update);

    if($query) {
        header("location: $mainlink" . "corporateGovernance");
    } else {
        echo "not working";
    }
}

elseif (isset($_POST['contact_details'])){
    
    $email = $_POST['email'];
    $phone = $_POST['phone_no'];
    $address = $_POST['address'];
    
    $currentDate = date("Y-m-d H:i:s");
   
    $insert_query1 = mysqli_query($con, "INSERT INTO contact_details(email, phone_no, address, created_on) VALUES('$email','$phone','$address','$currentDate')");

    if ($insert_query1) {
        header("location: $mainlink" . "contactdetails");
    } else {
        echo "Error: " . mysqli_error($con);
    }
}


elseif (isset($_POST['sending_email'])) {
    $des = $_POST['descriptions'];

    // Check if a file was uploaded
    if (isset($_FILES['uploads']) && $_FILES['uploads']['error'] === UPLOAD_ERR_OK) {
        $upload_dir = "upload/image/"; // Change this to your desired upload directory
        $upload_file = $upload_dir . basename($_FILES['uploads']['name']);

        if (move_uploaded_file($_FILES['uploads']['tmp_name'], $upload_file)) {
            // File uploaded successfully, insert into the database
            $insert_info = mysqli_query($con, "INSERT INTO adminnewsletter (upload, description, created_on) VALUES ('$upload_file', '$des', NOW())");

            if ($insert_info) {
                // Fetch email addresses from the subscribers table
                $select_subscribers = mysqli_query($con, "SELECT email FROM newsletter");

                $recipient_emails = array();

                while ($row = mysqli_fetch_assoc($select_subscribers)) {
                    $recipient_emails[] = $row['email'];
                }

                // Use PHPMailer to send emails
                require "../PHPMailer/PHPMailer.php";
                require "../PHPMailer/SMTP.php";
                require "../PHPMailer/Exception.php";
                $mail = new PHPMailer(true);

                $subject = "Your Newsletter Subject";
                $sender_email = "soumya05ranjan@gmail.com"; // Change to your sender email address

                // Set up SMTP configuration
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'soumya05ranjan@gmail.com'; // Replace with your Gmail username
                $mail->Password = 'omxnmogdokgduolo'; // Replace with your Gmail app password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
                $mail->Port = 587;

                $mail->setFrom($sender_email);
                $mail->isHTML(true);

                foreach ($recipient_emails as $email) {
                    $mail->addAddress($email);
                    $mail->Subject = $subject;

                    $unsubscribe_link = "http://localhost/LMS/lms2/unsubscribe.php?email=" . urlencode($email);
                    $message = "$des<br><br>";
                    $message .= "The content of your newsletter goes here.";
                    $message .= "<br><a href='$unsubscribe_link'>Unsubscribe</a>";

                    $mail->Body = $message;

                    // Attach the uploaded file
                    $mail->addAttachment($upload_file);

                    try {
                        $mail->send();
                    } catch (Exception $e) {
                        echo 'Message could not be sent.';
                        echo 'Mailer Error: ' . $mail->ErrorInfo;
                    }

                    $mail->clearAddresses();
                    $mail->clearAttachments();
                }

                // Redirect to the desired page after sending emails
                header("location: $mainlink" . "managenewsLetter");
            } else {
                echo "Error inserting data into the database: " . mysqli_error($con);
            }
        } else {
            echo "Failed to move the uploaded file to the destination directory.";
        }
    } else {
        echo "No file was uploaded or an error occurred during the upload.";
    }
}

// ...

// AJAX request to add a product to the cart
if (isset($_POST['add_to_cart'])) {
    $product_id = $_POST['product_id'];
    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_image = $_POST['product_image'];

    $cart_item = [
        'id' => $product_id,
        'name' => $product_name,
        'price' => $product_price,
        'image' => $product_image,
    ];

    // Add the product to the cart in the session
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [];
    }

    $_SESSION['cart'][] = $cart_item;

    // Create a response array
    $response = [
        'success' => true, // Indicates a successful operation
        'message' => 'Product added to the cart successfully',
        'cart_count' => count($_SESSION['cart']), // Send the updated cart count
    ];

    // Convert the response array to JSON
    $json_response = json_encode($response);

    // Send the JSON response to the client
    header('Content-Type: application/json');
    echo $json_response;
    // exit;
}

elseif(isset($_POST['addCategory']))
{
    $category=$_POST['category'];

    $addCategory = mysqli_query($con, "INSERT INTO careercategory(name,createdOn) VALUES ('$category',NOW())");

    if($addCategory)
    {
        header("location: $mainlink" . "career");

    }
    else{
        echo "failed";
    }
}

elseif(isset($_POST['apply_job']))
{
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $exp = $_POST['experience'];
    $careerId = $_POST['CareerId'];
    
    // Process file upload
    $cvpath = '';
    if (isset($_FILES['cv'])) {
        $imageFile = $_FILES['cv'];
        $cvpath = 'upload/image/' . $imageFile['name'];
        // Process and move the image file to your desired location
        move_uploaded_file($imageFile['tmp_name'], $cvpath);
    }

    // Insert data into the database
    $insertQuery = "INSERT INTO careersapplications (Name, Phone, Email, Experience, Attachment, CareerId,CreatedOn) 
                    VALUES ('$name', '$phone', '$email', '$exp', '$cvpath', '$careerId',NOW())";

    if(mysqli_query($con, $insertQuery))
    {
        header("location: $mainlink" . "web/career");

    }
    else{
        echo "failed";
    }
}

elseif(isset($_POST['chapter_manage']))
{
    $topicName=$_POST['topic'];
    $subtopicName = $_POST['subtopic'];
    $courseName = $_POST['courseName'];
    $chapterName = $_POST['chapter'];
    if (isset($_FILES['uploadfile'])) {
        $uploadFile = $_FILES['uploadfile'];
        $uploadFileName = $uploadFile['name'];
        // Process and move the upload file to your desired location
        move_uploaded_file($uploadFile['tmp_name'], 'upload/file/' . $uploadFileName);
    }

    if (isset($_FILES['video'])) {
        $videoFile = $_FILES['video'];
        $videoFileName = $videoFile['name'];
        // Process and move the video file to your desired location
        move_uploaded_file($videoFile['tmp_name'], 'upload/video/' . $videoFileName);
    }

    
    $insert_chapters = mysqli_query($con,"INSERT INTO chapters(topicID,subTopicId,courseId,chapterName,uploadfile,video,isActive) VALUES('$topicName','$subtopicName','$courseName','$chapterName','$uploadFileName','$videoFileName',1)");

    if ($insert_chapters) {
        header("location: $mainlink" . "manageChapter");
    } else {
        echo "not done";
    }


}elseif (isset($_POST['checking_chapters_btn'])) {
    $chapterId = $_POST['chapterId'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT 
    topics.Id AS topic_id,
    topics.topicName,
    subtopics.Id AS subtopic_id,
    subtopics.subtopicName,
    courses.id AS course_id,
    courses.courseName,
    chapters.id AS chapter_id,
    chapters.chapterName,
    chapters.uploadFile,
    chapters.video
    FROM
    topics
    JOIN
    subtopics ON topics.Id = subtopics.topicId
    JOIN
    courses ON subtopics.Id = courses.subTopicId
    JOIN
    chapters ON courses.id = chapters.courseId
    WHERE chapters.id=$chapterId";
    // $query = "SELECT * FROM `chapters` WHERE id = $chapterId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
// }elseif(isset($_POST['update_chapter'])){
//     $chapterId = $_POST['chapterId'];
//     $chapterName = $_POST['chapter'];
//     $date = date("Y-m-d H:i:s");
//     $maxUploadFileSize = 10 * 1024 * 1024; 
//     $maxVideoFileSize = 100 * 1024 * 1024; 

// if (isset($_FILES['uploadfile'])) {
//     $uploadFile = $_FILES['uploadfile'];
//     $uploadFileName = $uploadFile['name'];

//     // Process and move the upload file to your desired location
//     move_uploaded_file($uploadFile['tmp_name'], 'upload/file/' . $uploadFileName);
// }

// if (isset($_FILES['video'])) {
//     $videoFile = $_FILES['video'];
//     $videoFileName = $videoFile['name'];

//     move_uploaded_file($videoFile['tmp_name'], 'upload/video/' . $videoFileName);
// }

//     $update = "UPDATE chapters SET chapterName='$chapterName', uploadFile='$uploadFileName', video='$videoFileName', modifiedOn='$date' WHERE id='$chapterId'";
//     $query = mysqli_query($con, $update);

//     if($query) {
//         header("location: $mainlink" . "manageChapter");
//     } else {
//         echo "not working";
//     }
// }
}elseif(isset($_POST['update_chapter'])){
    $chapterId = $_POST['chapterId'];
    $chapterName = $_POST['chapter'];
    $date = date("Y-m-d H:i:s");
    $maxUploadFileSize = 10 * 1024 * 1024; 
    $maxVideoFileSize = 100 * 1024 * 1024; 

    // Check if uploadfile is provided in the form
    if (isset($_FILES['uploadfile'])) {
        $uploadFile = $_FILES['uploadfile'];
        $uploadFileName = $uploadFile['name'];

        // Process and move the upload file to your desired location
        move_uploaded_file($uploadFile['tmp_name'], 'upload/file/' . $uploadFileName);
    } else {
        // If not provided, keep the existing value
        $uploadFileName = ''; // Assuming it's a string field in the database
    }

    // Check if video is provided in the form
    if (isset($_FILES['video'])) {
        $videoFile = $_FILES['video'];
        $videoFileName = $videoFile['name'];

        move_uploaded_file($videoFile['tmp_name'], 'upload/video/' . $videoFileName);
    } else {
        // If not provided, keep the existing value
        $videoFileName = ''; // Assuming it's a string field in the database
    }

    // Update the database, considering the file values
    $update = "UPDATE chapters SET chapterName='$chapterName',";

    if (!empty($uploadFileName)) {
        $update .= " uploadFile='$uploadFileName',";
    }

    if (!empty($videoFileName)) {
        $update .= " video='$videoFileName',";
    }

    $update .= " modifiedOn='$date' WHERE id='$chapterId'";

    $query = mysqli_query($con, $update);

    if($query) {
        header("location: $mainlink" . "manageChapter");
    } else {
        echo "not working";
    }
}

elseif(isset($_POST['assessment_manage']))
{
    $topicName=$_POST['topic'];
    $subtopicName = $_POST['subtopic'];
    $courseName = $_POST['courseName'];
    $chapterName = $_POST['chapter'];
    $question = $_POST['question'];
    $optionA = $_POST['optionA'];
    $optionB = $_POST['optionB'];
    $optionC = $_POST['optionC'];
    $optionD = $_POST['optionD'];
    $correctAnswer = $_POST['correctAns'];

    
    $insert_assessment = mysqli_query($con,"INSERT INTO assessment(topicId,subTopicId,courseId,chapterId,questions,a,b,c,d,correctAnswer,isActive) VALUES('$topicName','$subtopicName','$courseName','$chapterName','$question','$optionA','$optionB','$optionC','$optionD','$correctAnswer',1)");

    if ($insert_assessment) {
        header("location: $mainlink" . "manageAssessment");
    } else {
        echo "not done";
    }


}
elseif (isset($_POST['checking_assessment_btn'])) {
    $assessmentId = $_POST['assessmentId'];
    $result_array = [];

    // Prepare and execute a query to fetch the blog data by ID
    $query = "SELECT 
    topics.Id AS topic_id,
    topics.topicName,
    subtopics.Id AS subtopic_id,
    subtopics.subtopicName,
    courses.id AS course_id,
    courses.courseName,
    chapters.id AS chapter_id,
    chapters.chapterName,
    assessment.id AS assessment_id,
    assessment.questions,
    assessment.a,
    assessment.b,
    assessment.c,
    assessment.d,
    assessment.correctAnswer
    FROM
    topics
    JOIN
    subtopics ON topics.Id = subtopics.topicId
    JOIN
    courses ON subtopics.Id = courses.subTopicId
    JOIN
    chapters ON courses.id = chapters.courseId
    JOIN 
    assessment ON chapters.id = assessment.chapterId
    WHERE
    assessment.id = $assessmentId";
    // $query = "SELECT * FROM `chapters` WHERE id = $chapterId";
    $query_run = mysqli_query($con, $query);
    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
            header('Content-type: application/json');
            echo json_encode($result_array);
        }
    }
    else{
        echo $return = "<h5>No Record Found</h5>";
    }
}
elseif(isset($_POST['update_assessment'])){
    $assessmentId = $_POST['assessmentId'];
    $optionA = $_POST['optionA'];
    $optionB = $_POST['optionB'];
    $optionC = $_POST['optionC'];
    $optionD = $_POST['optionD'];
    $correctAns = $_POST['correctAnswer'];

    $update = "UPDATE assessment SET 
                a='$optionA',
                b='$optionB',
                c='$optionC',
                d='$optionD',
                correctAnswer='$correctAns',
                modifiedOn=NOW() 
                WHERE id='$assessmentId'";

    $query = mysqli_query($con, $update);

    if ($query) {
        header("location: $mainlink" . "manageAssessment");
    } else {
        echo "Error: " . mysqli_error($con);
    }
}




?>








