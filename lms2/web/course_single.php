<?php
include("../functions/functions.php");
include("../functions/list_grid.php");
// include("../functions/database_functions.php");
include("includes/header.php");

include('../vendors/getid3/getid3/getid3.php');

// Function to get formatted duration
// Function to get formatted duration
function getFormattedDuration($videoFilePath)
{
    // Initialize getID3
    $getID3 = new getID3();

    // Analyze the video file
    $fileInfo = $getID3->analyze($videoFilePath);

    // Get video duration
    if (isset($fileInfo['playtime_seconds'])) {
        $duration = $fileInfo['playtime_seconds'];

        // Format the duration as HH:MM:SS
        $formattedDuration = gmdate('H:i:s', $duration);
    } else {
        $formattedDuration = "Unknown";
    }

    return $formattedDuration;
}

// Variable to store the total duration
$totalDurationInSeconds = 0;

if (isset($_GET['course_id'])) {
    $co_id = $_GET['course_id'];
    $fetch_data = mysqli_query($con, "SELECT * FROM courses WHERE id = $co_id");
    $fetch_chaepter_list=mysqli_query($con,"SELECT 
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
        chapters.courseId = $co_id AND
        chapters.isActive = 1");
    if ($fetch_data && mysqli_num_rows($fetch_data) > 0) {
        $n = mysqli_fetch_array($fetch_data);
        $courseName = $n['courseName'];
        
        $courseCost = $n['courseCost'];
        $bannerImage = $n['bannerImage'];
        $courseDesc = $n['courseDesc'];
        $createdOn=$n['createdOn'];
        $CourseSummary = $n['summary'];
        $Coursewyl=$n['learn'];
        $tag = $n['tag'];
        $requirement = $n['requirements'];
        $createdOn = $n['createdOn'];
            // echo $courseName;
        } else {
            echo "Course not found.";
        }
} else {
    $o_id = $_GET['order_id'];
    $payment_data = mysqli_query($con, "SELECT od.id, o.paymentstatus, o.orderdate, c.*, od.orderId, od.courseId
    FROM orderdetails AS od
    JOIN `orders` AS o ON od.orderId = o.id
    JOIN courses AS c ON od.courseId = c.id
    WHERE od.id = $o_id");
    if ($payment_data && mysqli_num_rows($payment_data) > 0) {
        $n = mysqli_fetch_array($payment_data);
        $courseName = $n['courseName'];
        $paymentstatus = $n['paymentstatus'];
        $courseCost = $n['courseCost'];
        $bannerImage = $n['bannerImage'];
        $courseDesc = $n['courseDesc'];
        $createdOn=$n['createdOn'];
        $Coursewyl=$n['learn'];
        $CourseSummary = $n['summary'];
        $tag = $n['tag'];
        $requirement = $n['requirements'];
        $createdOn = $n['createdOn'];
            // echo $courseName;
        } else {
            echo "Order not found.";
        }
}    

    
?>

<!-- The rest of your HTML code for displaying the course details -->

<div class="search-wrap">
    <div class="overlay">
        <form action="" class="search-form">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-9">
                        <h3>Search Your keyword</h3>
                        <input type="text" class="form-control" placeholder="Search...">
                    </div>
                    <div class="col-md-2 col-3 text-right">
                        <div class="search_toggle toggle-wrap d-inline-block">
                            <img class="search-close" src="assets/images/close.png"
                                srcset="assets/images/close%402x.png 2x" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!--search overlay end-->


<section class="page-header">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="page-header-content">
                    <h1><?= $courseName; ?></h1>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="list-inline-item">/</li>
                        <li class="list-inline-item">
                            Courses
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="page-wrapper edutim-course-single">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="course-single-header">
                    <div class="rating">
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star"></i></a>
                        <span>(5.00)</span>
                    </div>

                    <h3 class="single-course-title"><?= $courseName; ?></h3>
                    <?= $CourseSummary ?>

                    <div class="single-course-meta ">
                        <ul>
                            <li>
                                <span><i class="fa fa-calendar"></i>Last Update :</span>
                                <a href="#" class="d-inline-block"><?= $createdOn; ?></a>
                            </li>

                            <li>
                                <span><i class="fa fa-bookmark"></i>Tag :</span>
                                <a href="#" class="d-inline-block"><?= $tag ?></a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="single-course-details ">
                    <h4 class="course-title">Description</h4>
                    <?=
                    $courseDesc;
                    ?>


                    <div class="course-widget course-info">
                        <h4 class="course-title">What You will Learn?</h4>
                        <?= $Coursewyl?>
                    </div>
                </div>
                <!--  Course Topics -->
                <div class="edutim-single-course-segment  edutim-course-topics-wrap">
                    <div class="edutim-course-topics-header d-lg-flex justify-content-between">
                        <div class="edutim-course-topics-header-left">
                            <h4 class="course-title">Topics for this course</h4>
                        </div>
                        <div class="edutim-course-topics-header-right">
                            <span>Total learning: <strong><?= gmdate('H:i:s', $totalDurationInSeconds) ?></strong></span>
                        </div>
                    </div>
                    <?php if ($fetch_chaepter_list->num_rows > 0):?>
                    <div class="edutim-course-topics-contents">
                        <div class="accordion" id="accordionExample">
                            <?php while ($row = $fetch_chaepter_list->fetch_assoc()):
                            $videoFilePath = "../functions/upload/video/" . $row['video'];
                                $videoDuration = getFormattedDuration($videoFilePath);
                                if ($videoDuration !== 'Unknown') {
                                   // Add the duration in seconds to the total duration
                                    $totalDurationInSeconds += getDurationInSeconds($videoDuration); 
                                    
                                }
                                // echo $totalDurationInSeconds; 
                                $chapterName = $row['chapterName'];
                             ?>
                            <div class="card">
                                <div class="card-header" id="heading<?= $row['chapter_id'] ?>">
                                    <h2 class="mb-0">
                                        <button class="btn-block text-left curriculmn-title-btn" type="button"
                                            data-toggle="collapse" data-target="#collapse<?= $row['chapter_id'] ?>"
                                            aria-expanded="true" aria-controls="collapse<?= $row['chapter_id'] ?>">
                                            <h4 class="curriculmn-title"><?= $row['chapterName'] ?></h4>
                                        </button>
                                    </h2>
                                </div>

                                <div id="collapse<?= $row['chapter_id'] ?>" class="collapse"
                                    aria-labelledby="heading<?= $row['chapter_id'] ?>" data-parent="#accordionExample">
                                    <div class="course-lessons">
                                        <div class="single-course-lesson">
                                            <div class="course-topic-lesson">
                                                <i class="fab fa-youtube"></i>
                                                <video id="myVideo" width="320" height="240" controls>
                                                    <source src="../functions/upload/video/<?= $row['video'] ?>" type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                                <div class="video-duration">
                                                    Duration: <?= getFormattedDuration("../functions/upload/video/" . $row['video']) ?>
                                                </div>
                                            </div>
                                            <div class="course-lesson-duration">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="course-lessons">
                                        <div class="single-course-lesson">
                                            <div class="course-topic-lesson">
                                                <i class="fa fa-file"></i>
                                                <a href="../functions/upload/file/<?= $row['uploadFile']; ?>" target="_blank"><?= $row['uploadFile'] ?></a>                                            
                                            </div>
                                            <div class="course-lesson-duration">
                                            <i class="fa fa-question"></i>
                                                <a href="assessment.php?courseId=<?= $row['course_id']; ?>">Assessment</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php endwhile; ?>
                        </div>
                    </div>
                    <?php endif; ?>
                    <?php
// Function to convert HH:MM:SS to seconds
function getDurationInSeconds($duration)
{
    list($hours, $minutes, $seconds) = explode(':', $duration);
    return $hours * 3600 + $minutes * 60 + $seconds;
}
?>

                </div>

                <!--  COurse Topics End -->

                <div class="course-widget course-info">
                    <h4 class="course-title">About the instructors</h4>
                    <div class="instructor-profile">
                        <div class="profile-img">
                            <img src="assets/images/blog/author.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="profile-info">
                            <h5>Meraz Ahmed</h5>
                            <div class="rating">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half"></i></a>
                                <span>3.79 ratings (29 )</span>
                            </div>
                            <p>I'm a developer with a passion for teaching. I'm the lead instructor at the London App
                                Brewery, London's leading Programming Bootcamp. I've helped hundreds of thousands of
                                students learn to code and change their lives by becoming a developer </p>
                            <div class="instructor-courses">
                                <span><i class="bi bi-folder"></i>4 Courses</span>
                                <span><i class="bi bi-group"></i>400 Students</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="course-widget course-info">
                    <h4 class="course-title">Students Feedback</h4>

                    <div class="course-review-wrapper">
                        <div class="course-review">
                            <div class="profile-img">
                                <img src="assets/images/blog/author.jpg" alt="" class="img-fluid">
                            </div>
                            <div class="review-text">
                                <h5>Mehedi Rasedh <span>26th june 2020</span></h5>

                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half"></i></a>
                                </div>
                                <p>Great course. Well structured, paced and I feel far more confident using this
                                    software now then I did back in school when I was learning. And the guy doing the
                                    voice over really is great at what he does</p>
                            </div>
                        </div>


                        <div class="course-review">
                            <div class="profile-img">
                                <img src="assets/images/blog/author.jpg" alt="" class="img-fluid">
                            </div>
                            <div class="review-text">
                                <h5>Rasedh raj <span>1 Year Ago</span></h5>
                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half"></i></a>
                                </div>
                                <p>Very deep course for a beginner, enjoyed everything from the very start and every
                                    detail is vastly investigated and discussed. A nice choice for those, who are
                                    enrolling Python. </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="course-sidebar">
                    <div class="course-single-thumb">
                        <img src="../functions/upload/image/<?= $bannerImage ?>" alt="" class="img-fluid w-100">
                        <div class="course-price-wrapper">
                            <?php
    if (isset($_GET['order_id'])) {
        $co_id=$_GET['order_id'];
        // If an order ID is present, hide the course price and quantity input
        ?>
                            <div class="buy-btn">
                                <a href="MyActiveCourse.php?start_id=<?= $co_id ?>" class="btn btn-main btn-block">

                                    Start Course
                                </a>

                            </div>
                            <?php
    } else {
        // If not, show the course price and quantity input
        ?>
                            <h4>Price: <span>&#8377; <?= $courseCost ?></span></h4>
                            <input type="number" id="quantity" name="quantity" min="1" value="1"
                                style="font-size: 20px; width: 50px; height: 30px;">
                            <div class="buy-btn">
                                <?php
            if (isset($_GET['course_id'])) {
                // If a course ID is present, display the "Start Course" button
                ?>
                                <a href="start_course_url.php" class="btn btn-main btn-block add_to_cart_button"
                                    data-product-id="<?= $co_id ?>" data-product-name="<?= $courseName ?>"
                                    data-product-price="<?= $courseCost ?>" data-product-image="<?= $bannerImage ?>">
                                    Add To Cart
                                </a>
                                <?php
            }
            ?>
                            </div>
                            <?php
    }
    ?>
                        </div>


                    </div>


                    <div class="course-widget single-info">
                        <i class="bi bi-group"></i>
                        Enrolled <span>101 Students</span>
                    </div>

                    <div class="course-widget course-details-info">
                        <h4 class="course-title">This Course Includes</h4>
                        <ul>
                            <li>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span><i class="bi bi-graph-bar"></i>Skill level : </span>
                                    Beginner
                                </div>
                            </li>
                            <li>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span><i class="bi bi-user-ID"></i>Instructor :</span>
                                    <a href="#" class="d-inline-block">Jone Smit</a>
                                </div>
                            </li>

                            <li>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span><i class="bi bi-flag"></i>Duration :</span>
                                    2 weeks
                                </div>
                            </li>
                            <li>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span><i class="bi bi-paper"></i>Lessons :</span>
                                    42
                                </div>
                            <li>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span><i class="bi bi-forward"></i>Language :</span>
                                    English
                                </div>
                            </li>

                            <li>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span><i class="bi bi-madel"></i>Certificate :</span>
                                    yes
                                </div>
                            </li>
                        </ul>
                    </div>


                    <div class="course-widget course-share d-flex justify-content-between align-items-center">
                        <span>Share</span>
                        <ul class="social-share list-inline">
                            <li class="list-inline-item"><a href="#"><i class="fab fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
                        </ul>
                    </div>

                    <div class="course-widget course-metarials">
                        <h4 class="course-title">Requirements</h4>
                        <?= $requirement ?>
                    </div>

                    <div class="course-widget">
                        <h4 class="course-title">Tags</h4>
                        <div class="single-course-tags">
                            <?php
                        // Assuming $tags is an array of tags
                        $tags = ["Web Design", "Development", "Html", "Css"];

                        // Loop through the tags and generate HTML elements
                        foreach ($tags as $tag) {
                            echo '<a href="#">' . $tag . '</a>';
                        }
                        ?>
                        </div>
                    </div>




                </div>
            </div>
        </div>
    </div>
</section>

<section class="section-padding related-course">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h4>Related Courses You may Like</h4>
                </div>
            </div>
        </div>

        <?php
// $related_courses_query = mysqli_query($con, "SELECT * FROM courses WHERE category = (SELECT category FROM courses WHERE id = $co_id) AND id != $co_id ORDER BY RAND() LIMIT 3");
$fetch_course_list_data=mysqli_query($con,"SELECT 

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
courses ON subtopics.Id = courses.subTopicId ORDER By courses.id DESC LIMIT 3");

if ($fetch_course_list_data && mysqli_num_rows($fetch_course_list_data) > 0) {
    ?>
    <div class="row">
        <?php
        while ($related_course = mysqli_fetch_array($fetch_course_list_data)) {

            $id = $related_course['course_id'];
            $courseName = $related_course['courseName'];
            $courseCost = $related_course['courseCost'];
            $courseDesc = $related_course['courseDesc']; 
            $bannerImage = $related_course['bannerImage'];
            ?>
            <div class="col-lg-4 col-md-6">
                <div class="course-block">
                    <div class="course-img">
                        <img src="../functions/upload/image/<?= $bannerImage ?>" alt="" class="img-fluid">
                        <!-- You can use the course category or any other relevant information -->
                        <span class="course-label"><?= $courseName; ?></span>
                    </div>

                    <div class="course-content">
                        <div class="course-price"><?= "&#8377;" . $courseCost; ?></div>

                        <h4><a href="course_single.php?course_id=<?= $id; ?>"><?= $courseName; ?></a></h4>
                        <div class="rating">
                            <!-- Your rating display logic here -->
                        </div>
                        <p><?= $courseDesc; ?></p>

                        <div class="course-footer d-lg-flex align-items-center justify-content-between">
                            <div class="course-meta">
                                <!-- <span class="course-student"><i class="bi bi-group"></i><?= $related_course['students']; ?></span>
                                <span class="course-duration"><i class="bi bi-badge3"></i><?= $related_course['lessons']; ?> Lessons</span> -->
                            </div>

                            <div class="buy-btn"><a href="course_single.php?course_id=<?= $id; ?>" class="btn btn-main-2 btn-small">Details</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <?php
        }
        ?>
    </div>
    <?php
} else {
    echo "No related courses found.";
}
?>
    </div>
</section>

<script>
$('.add_to_cart_button').click(function(e) {
    e.preventDefault();

    var product_id = $(this).data('product-id');
    var product_name = $(this).data('product-name');
    var product_price = $(this).data('product-price');
    var product_image = $(this).data('product-image');

    // Check if there is an existing cart in local storage
    var cart = JSON.parse(localStorage.getItem('cart')) || [];

    // Create a new cart item
    var cartItem = {
        id: product_id,
        name: product_name,
        price: product_price,
        image: product_image
    };

    // Add the new item to the cart
    cart.push(cartItem);

    // Save the updated cart back to local storage
    localStorage.setItem('cart', JSON.stringify(cart));

    // Update the cart count in the header
    updateCartCount();
});

function updateCartCount() {
    var cart = JSON.parse(localStorage.getItem('cart')) || [];
    var cartCount = cart.length;
    $('#cart-count-container').text(' (' + cartCount + ')');
}

$(document).ready(function() {
    updateCartCount(); // Call this on page load to set the initial cart count
});

function getCartItems() {
    return JSON.parse(localStorage.getItem('cart')) || [];
}

// Example: Get the cart items and do something with them
var cartItems = getCartItems();
cartItems.forEach(function(item) {
    // Do something with each item, e.g., display in a cart summary
});

// ...
</script>
<script>
    // Initialize total duration variable
    let totalDurationInSeconds = 0;

    // Function to convert HH:MM:SS to seconds
    function getDurationInSeconds(duration) {
        const [hours, minutes, seconds] = duration.split(':');
        return parseInt(hours) * 3600 + parseInt(minutes) * 60 + parseInt(seconds);
    }

    // Function to update the total duration
    function updateTotalDuration(duration) {
        totalDurationInSeconds += duration;
        const formattedTotalDuration = new Date(totalDurationInSeconds * 1000).toISOString().substr(11, 8);
        document.getElementById('total-learning-duration').innerText = formattedTotalDuration;
    }
    </script>
    <script>
    var video = document.getElementById("myVideo");

    video.addEventListener("ended", function() {
        video.controls = false; // Disable video controls after video ends
    });
</script>

<?php
include("includes/footer.php");
?>