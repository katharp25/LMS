<?php

include("functions/config.php");

if(isset($_POST["tag"]))
{   
    $output = '';
    $query = "SELECT * FROM blogtag WHERE name LIKE '%".$_POST["tag"]."%'";
    $result = mysqli_query($con, $query);
    $output = '<ul class ="list-unstyled">';
    if(mysqli_num_rows($result) > 0)
    {
        while($row = mysqli_fetch_array($result))
        {
            $output .= '<li>'.$row["name"].'</li>';
        }
    }
    else{
        $output .= '<li>Tag Not Found</li>';
    }
    $output .= '</ul>';
    echo $output;
}elseif(isset($_POST["course_tags"]))
{   
    $output = '';
    $query = "SELECT * FROM coursetag WHERE name LIKE '%".$_POST["tag"]."%'";
    $result = mysqli_query($con, $query);
    $output = '<ul class ="list-unstyled">';
    if(mysqli_num_rows($result) > 0)
    {
        while($row = mysqli_fetch_array($result))
        {
            $output .= '<li>'.$row["name"].'</li>';
        }
    }
    else{
        $output .= '<li>Tag Not Found</li>';
    }
    $output .= 'bhai';
    echo $output;
}

// course tags



if(isset($_POST['update']))
{
    $id = $_POST['blog_id'];
    $title = $_POST['editTitle'];
    $writer = $_POST['editWriter'];
    $image = $_POST['editImage'];
    $description = $_POST['editDescription'];

    $update = "UPDATE blogs set blogTitle='$title', writer ='$writer', bannerImage='$image', description='$description' WHERE id='$id'";
    $query = mysqli_query($con, $update);

    if($query)
    {
        echo "update successfully";
    }
    else{
        echo "not working";
    }
}
?>