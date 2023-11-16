<?php
if(isset($_GET['file']))
{
    $file = $_GET['file'];
    $path = 'functions/upload/image/' . $file;

    // Check if the file exists
    if(file_exists($path))
    {
        // Send appropriate headers
        header('Content-Description: File Transfer');
        header('Content-Type: application/pdf'); // Change this to 'application/pdf' for PDF files
        header('Content-Disposition: attachment; filename=' . basename($path));
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($path));

        // Output the file
        readfile($path);
        exit;
    }
    else
    {
        echo 'File not found.';
    }
}
else
{
    echo 'Invalid request.';
}
?>
