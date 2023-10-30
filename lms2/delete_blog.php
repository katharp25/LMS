<?php

$host="localhost";
$db="saburi_lms_2023";
$password="";
$username="root";

$con = mysqli_connect($host,$username,$password,$db);

// Check if the "id" parameter is set in the URL
if (isset($_POST['delete_blog'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];

    // Create a database connection (adjust these settings according to your database)
   
    // Check the database connection
   
    // Perform the delete operation using the ID (replace "your_table" with your table name)
    $sql = "DELETE FROM blogs WHERE id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "blog");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_subtopic'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM subtopics WHERE Id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "subtopic");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_topic'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM topics WHERE Id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "topic");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_resources'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM freeresources WHERE Id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "freeResources");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_affiliate'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM affiliates WHERE Id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "affiliate");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_career'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM careers WHERE Id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "career");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_cg'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM corporategovernance WHERE Id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "corporateGovernance");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_subscription'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM subscriptions_1 WHERE id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "manageSubscriptions");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}

if (isset($_POST['delete_course'])) {
    // Get the ID from the URL
    $id = $_POST['delete_id'];
    $sql = "DELETE FROM courses WHERE id = $id";
    $query=mysqli_query($con, $sql);
    if ($query) {
        // If the delete operation is successful, you can redirect to a success page
        header("location: $mainlink" . "manageCourse");
        // exit();
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($conn);
}
?>
