<?php
session_start();
// include("./config.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['role'])) {
        $_SESSION['role'] = $_POST['role'];
    }
}
// echo "here";
// exit();
// Redirect to the account page
header("Location: http://localhost/LMS/lms2/web/account");
exit;
?>
