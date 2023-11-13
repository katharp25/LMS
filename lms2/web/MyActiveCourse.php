<?php
// Include your database connection code here
include("../functions/functions.php");
include("../functions/list_grid.php");
include("../functions/database_functions.php");

if (isset($_GET['start_id'])) {
    $co_id = $_GET['start_id'];
    
    // Update the status to 1 in the database for the specified course
    $updateStatusQuery = "UPDATE orderdetails SET status = 1 WHERE id = $co_id";
    
    if (mysqli_query($con, $updateStatusQuery)) {
        // Status updated successfully
        echo "Course status updated. You can now start the course.";
    } else {
        // Failed to update status
        echo "Failed to update course status: " . mysqli_error($con);
    }
} else {
    // Handle the case where the course_id is not set
    echo "Course ID not provided.";
}

// Close the database connection
mysqli_close($con);
?>
