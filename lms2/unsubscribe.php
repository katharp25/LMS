<?php
// Initialize your database connection. Replace with your actual database credentials.
$host = "localhost";
$db = "saburi_lms_2023";
$password = "";
$username = "root";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Create a connection to the database
$conn = new mysqli($host, $username, $password, $db);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['email'])) {
    // Get the email from the URL
    $email = $_GET['email'];
    
    // Display the confirmation message
    echo "If you would like to stop receiving promotional emails permanently from Saburi LMS, please click on the below unsubscribe button.<br>";
    echo "$email will be removed from our mailing list.<br><br>";
    
    // Display "Yes" and "No" options
    echo "Do you want to unsubscribe?<br>";
    echo "<a href='unsubscribe.php?email=$email&confirm=yes'>Yes</a> ";
    echo "<a href='unsubscribe.php?email=$email&confirm=no'>No</a>";
    
    // Check for confirmation
    if (isset($_GET['confirm'])) {
        if ($_GET['confirm'] === 'yes') {
            // SQL query to mark the user as unsubscribed
            $sql = "UPDATE newsletter SET status = 0 WHERE email = '$email'";
    
            if ($conn->query($sql) === TRUE) {
                // Display a confirmation message
                echo "You have been unsubscribed successfully.";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        } elseif ($_GET['confirm'] === 'no') {
            // User chose not to unsubscribe
            echo "You are still subscribed to our mailing list.";
        }
    }
} else {
    echo "Invalid request. Please provide a valid email address.";
}

// Close the database connection
$conn->close();
?>
