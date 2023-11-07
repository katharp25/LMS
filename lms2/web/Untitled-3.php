<?php
// session_start();
include('config.php');
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;



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
} elseif (isset($_POST['course_manage'])) {
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
elseif (isset($_POST['blog_manage'])) {
    // Process the form data as needed
    $title = $_POST['title'];
    if (isset($_FILES['image'])) {
        $imageFile = $_FILES['image'];
        $imageFileName = $imageFile['name'];
        // Process and move the image file to your desired location
        move_uploaded_file($imageFile['tmp_name'], 'upload/image/' . $imageFileName);
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
elseif(isset($_POST['update']))
{
    $id = $_POST['blog_id'];
    $title = $_POST['editTitle'];
    $writer = $_POST['editWriter'];
    $image = $_POST['editImage'];
    $description = $_POST['editDescription'];

    if(isset($_FILES['editImage']['tmp_name']) && !empty($_FILES['editImage']['tmp_name'])) {
        // Handle the new image upload
        $newImage = $_FILES['editImage']['name'];
        $imagePath = "upload/image/" . $newImage; // Update with your actual image upload path
        move_uploaded_file($_FILES['editImage']['tmp_name'], $imagePath);
    } else {
        // No new image uploaded, keep the old image
        $imagePath = $_POST['oldImage']; // This should be the path to the old image
    }

    $update = "UPDATE blogs set blogTitle='$title', writer ='$writer', bannerImage='$image', description='$description' WHERE id='$id'";
    $query = mysqli_query($con, $update);

    if($query)
    {
        header("location: $mainlink" . "blog");
    }
    else{
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
    $title = $_POST['title'];
    $exp = $_POST['exp'];
    $desc = $_POST['desc'];
   
    $insert_query = mysqli_query($con, "INSERT INTO careers(Title, Experience, Description) VALUES('$title', '$exp', '$desc')");

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
    $title = $_POST['title'];
    $name = $_POST['name'];
    $image = $_POST['image'];

    // Check if a new image has been uploaded
    if(isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
        // Handle the new image upload
        $newImage = $_FILES['image']['name'];
        $imagePath = "upload/image/" . $newImage; // Update with your actual image upload path
        move_uploaded_file($_FILES['image']['tmp_name'], $imagePath);
    } else {
        // No new image uploaded, keep the old image
        $imagePath = $_POST['oldImage']; // This should be the path to the old image
    }

    $update = "UPDATE corporategovernance SET Title='$title', name='$name', image='$imagePath' WHERE id='$id'";
    $query = mysqli_query($con, $update);

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

session_start();

if (isset($_GET['id']) && isset($_GET['name']) && isset($_GET['price']) && isset($_GET['image'])) {
    $courseId = $_GET['id'];
    $courseName = $_GET['name'];
    $coursePrice = $_GET['price'];
    $courseImage = $_GET['image'];

    // Check if the cart session variable exists, if not, initialize it
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = array();
    }

    // Check if the item is already in the cart
    $itemIndex = 1;
    for ($i = 0; $i < count($_SESSION['cart']); $i++) {
        if ($_SESSION['cart'][$i]['id'] == $courseId) {
            $itemIndex = $i;
            break;
        }
    }

    // If the item is in the cart, update the quantity; otherwise, add it to the cart
    if ($itemIndex != 1) {
        $_SESSION['cart'][$itemIndex]['quantity'] += 1;
    } else {
        $cartItem = array(
            'id' => $courseId,
            'name' => $courseName,
            'price' => $coursePrice,
            'image' => $courseImage,
            'quantity' => 1
        );
        array_push($_SESSION['cart'], $cartItem);
    }

    // Return the updated cart count
    $cartCount = count($_SESSION['cart']);
    echo $cartCount;
} else {
    echo "Invalid parameters";
}


// session_start();

// // // Initialize the response array
// $response = array();

// // Check if the request contains a product ID
// if (isset($_POST['productId'])) {
//     $productId = $_POST['productId'];
//     // $productId = $_POST['productId'];
//         $productName = $_POST['productName'];
//         $productPrice = $_POST['productPrice'];
//         $productImage = $_POST['productImage'];
    
//         // Create a new cart item array
//         $cartItem = array(
//             'id' => $productId,
//             'name' => $productName,
//             'price' => $productPrice,
//             'image' => $productImage
//         );

//     // Here, you can perform the necessary logic to add the product to the cart
//     // For example, you can store the product ID in a session variable.

//     // Check if the cart array exists in the session
//     if (!isset($_SESSION['cart'])) {
//         $_SESSION['cart'] = array();
//     }

//     // Add the product to the cart
//     $_SESSION['cart'][] = $productId;

//     // Set a success message in the response
//     $response['success'] = true;
//     $response['message'] = 'Product added to the cart successfully';
// } else {
//     // If the product ID is not provided in the request, set an error message in the response
//     $response['success'] = false;
//     $response['message'] = 'Product ID not provided';
// }

// // Calculate the total number of items in the cart
// $cartCount = count($_SESSION['cart']);
// $response['cartCount'] = $cartCount;

// // Return the response as JSON
// header('Content-Type: application/json');
// echo json_encode($response);


// session_start();

// Check if the request contains product details
// if (isset($_POST['productId'])) {
//     $productId = $_POST['productId'];
//     $productName = $_POST['productName'];
//     $productPrice = $_POST['productPrice'];
//     $productImage = $_POST['productImage'];

//     // Create a new cart item array
//     $cartItem = array(
//         'id' => $productId,
//         'name' => $productName,
//         'price' => $productPrice,
//         'image' => $productImage
//     );

//     // Check if the cart array exists in the session
//     if (!isset($_SESSION['cart'])) {
//         $_SESSION['cart'] = array();
//     }

//     // Add the new cart item to the session's cart array
//     $_SESSION['cart'][] = $cartItem;

//     // You can return a success message or response if needed
//     echo 'Product added to the cart successfully';
// } else {
//     // Handle the case where the product details are missing in the request
//     echo 'Error: Product details not provided';
// }
?>







