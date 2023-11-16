<?php
$host="localhost";
$db="saburi_lms_2023";
$username="root";
$password="";

$con = mysqli_connect($host,$username,$password,$db);

// include "database_functions.php";
// $courseList = fetchCoursesList();
// fetching list of Users to users module

$fetch_list_query=mysqli_query($con,"SELECT * FROM users where IsActive = 1");
$fetch_user_contact_query=mysqli_query($con,"SELECT * FROM contact where status = 1");
$fetch_user_contact_details_query=mysqli_query($con,"SELECT * FROM contact_details where status = 1");

$fetch_user_newsletter_query=mysqli_query($con,"SELECT * FROM newsletter where status = 1");
// $fetch_list_student_query=mysqli_query($con,"SELECT * FROM students ");

$fetch_list_students_query=mysqli_query($con,"SELECT * FROM students");
$fetch_list_order_query=mysqli_query($con,"SELECT od.id,o.paymentstatus, o.orderdate, c.courseDesc,c.courseName
FROM orderdetails AS od
JOIN `orders` AS o ON od.orderId = o.id
JOIN courses AS c ON od.courseId = c.id;");

$fetch_list_students_query=mysqli_query($con,"SELECT * FROM students");

$fetch_list_topic_query=mysqli_query($con,"SELECT * FROM topics");
$fetch_list_subtopic_query=mysqli_query($con,"SELECT * FROM subtopics");
$fetch_list_join_topics_subtopic_query=mysqli_query($con,"SELECT topics.topicName,subtopics.subTopicName FROM subtopics INNER JOIN topics ON topics.Id = subtopics.topicId;");
$fetch_list_join_topics_subtopic_course_query=mysqli_query($con,"SELECT 
topics.Id AS topic_id,
topics.topicName,
subtopics.Id AS subtopic_id,
subtopics.subTopicName,
courses.id AS course_id,
courses.courseName,
courses.courseCost,
courses.courseDesc,
courses.bannerImage,
courses.uploadfile,
courses.learn,
courses.requirements,
courses.tag,
courses.video
FROM 
topics
JOIN 
subtopics ON topics.Id = subtopics.topicId
JOIN 
courses ON subtopics.Id = courses.subTopicId ORDER By courses.id DESC");

$fetch_list_join_topics_subtopics_course_chapters_query = mysqli_query($con, "SELECT 
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
WHERE
chapters.isActive = 1
ORDER BY
chapters.id DESC");

// $fetch_list_join_topics_subtopics_course_chapters_assessments_query = mysqli_query($con, "SELECT 
// topics.Id AS topic_id,
// topics.topicName,
// subtopics.Id AS subtopic_id,
// subtopics.subtopicName,
// courses.id AS course_id,
// courses.courseName,
// chapters.id AS chapter_id,
// chapters.chapterName,
// assessment.id AS assessment_id,
// assessment.questions,
// assessment.a,
// assessment.b,
// assessment.c,
// assessment.d,
// CASE assessment.correctAnswer
//     WHEN 'a' THEN assessment.a
//     WHEN 'b' THEN assessment.b
//     WHEN 'c' THEN assessment.c
//     WHEN 'd' THEN assessment.d
//     ELSE NULL
// END AS correctAnswer
// FROM
// topics
// JOIN
// subtopics ON topics.Id = subtopics.topicId
// JOIN
// courses ON subtopics.Id = courses.subTopicId
// JOIN
// chapters ON courses.id = chapters.courseId
// JOIN 
// assessment ON chapters.id = assessment.chapterId
// WHERE
// chapters.isActive = 1
// ORDER BY
// chapters.id DESC");




$fetch_list_query_subscription=mysqli_query($con,"SELECT * FROM subscriptions_1");

$fetch_list_join_topics_subtopic_query=mysqli_query($con,"SELECT * FROM subtopics INNER JOIN topics ON topics.Id = subtopics.topicId;");

$fetch_list_blog_query=mysqli_query($con,"SELECT * FROM blogs where isActive = 1");

$fetch_list_freeResources_query=mysqli_query($con,"SELECT * FROM freeresources where isActive = 1");

$fetch_list_affiliate_query=mysqli_query($con,"SELECT * FROM affiliates where isActive = 1");

$fetch_list_careers_query=mysqli_query($con,"SELECT * FROM careers where IsActive = 1");

$fetch_list_company_query=mysqli_query($con,"SELECT * FROM company Where isActive = 1");

$fetch_list_corporategovernance_query=mysqli_query($con,"SELECT * FROM corporategovernance where isActive = 1");



// if ($_SERVER['REQUEST_METHOD'] === 'POST') {
//     // Collect the form data
//     $id = $_POST['id']; // Assuming 'id' is a hidden input in the form to identify the student
//     $fullName = $_POST['fullName'];
//     $DOB = $_POST['DOB'];
//     $address = $_POST['address'];
//     $state = $_POST['state'];
//     $pincode = $_POST['pincode'];
//     $gender = $_POST['gender'];
//     $phoneNumber = $_POST['phoneNumber'];
//     $email = $_POST['email'];
//     $idProof = $_POST['idProof'];
//     $idProofDetails = $_POST['idProofDetails'];

//     // Update query
//     $update_query = "UPDATE students SET 
//                     name = '$fullName',
//                     DOB = '$DOB',
//                     address = '$address',
//                     state = '$state',
//                     pincode = '$pincode',
//                     gender = '$gender',
//                     phoneNumber = '$phoneNumber',
//                     email = '$email',
//                     idProof = '$idProof',
//                     idProofDetails = '$idProofDetails'
//                     WHERE id = $id";

//     // Execute the update query
//     $result = mysqli_query($your_db_connection, $update_query); // Replace $your_db_connection with your database connection variable

//     if ($result) {
//         // Update successful
//         echo "Student information updated successfully!";
//     } else {
//         // Update failed
//         echo "Error updating student information: " . mysqli_error($your_db_connection); // Replace $your_db_connection with your database connection variable
//     }
// }





// if ($_SERVER['REQUEST_METHOD'] === 'POST') {
//     // Collect the form data
//     $id = $_POST['id']; // Assuming 'id' is a hidden input in the form to identify the student
//     $fullName = $_POST['fullName'];
//     $DOB = $_POST['DOB'];
//     $address = $_POST['address'];
//     $state = $_POST['state'];
//     $pincode = $_POST['pincode'];
//     $gender = $_POST['gender'];
//     $phoneNumber = $_POST['phoneNumber'];
//     $email = $_POST['email'];
//     $idProof = $_POST['idProof'];
//     $idProofDetails = $_POST['idProofDetails'];

//     // Update query
//     $update_query = "UPDATE students SET 
//                     name = '$fullName',
//                     DOB = '$DOB',
//                     address = '$address',
//                     state = '$state',
//                     pincode = '$pincode',
//                     gender = '$gender',
//                     phoneNumber = '$phoneNumber',
//                     email = '$email',
//                     idProof = '$idProof',
//                     idProofDetails = '$idProofDetails'
//                     WHERE id = $id";

//     // Execute the update query
//     $result = mysqli_query($your_db_connection, $update_query); // Replace $your_db_connection with your database connection variable

//     if ($result) {
//         // Update successful
//         echo "Student information updated successfully!";
//     } else {
//         // Update failed
//         echo "Error updating student information: " . mysqli_error($your_db_connection); // Replace $your_db_connection with your database connection variable
//     }
// }



// $fetch_list=mysqli_fetch_assoc($fetch_list_query);
// $users_name=$fetch_list['Name'];
// echo $users_name;
