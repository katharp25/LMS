<?php
$host="localhost";
$db="saburi_lms_2023";
$password="";
$username="root";
$con = mysqli_connect($host,$username,$password,$db);


if(!empty($_GET['code']) && isset($_GET['code']))
{

$code=$_GET['code'];
$sql=mysqli_query($con,"SELECT * FROM students WHERE activationcode='$code'");
$num=mysqli_fetch_array($sql);
if($num>0)
{
$st=0;
$result =mysqli_query($con,"SELECT id FROM students WHERE activationcode='$code' and isActive='$st'");
$result4=mysqli_fetch_array($result);
if($result4>0)
 {
$st=1;
$result1=mysqli_query($con,"UPDATE students SET isActive='$st' WHERE activationcode='$code'");
$msg="Your account is activated";
header("location: http://localhost/LMS/lms2/web/login.php");
}
else
{
$msg ="Your account is already active, no need to activate again";
}
}
else
{
$msg ="Wrong activation code.";
}
}
?>