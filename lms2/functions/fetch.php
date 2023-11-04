<?php
// Assuming you have a database connection established
$host="localhost";
$db="saburi_lms_2023";
$password="";
$username="root";

$con = mysqli_connect($host,$username,$password,$db);

// ... (database connection and other code)

if (isset($_GET['subtopicId'])) {
    $targetId = $_GET['subtopicId'];

    // Query to fetch courses based on the selected subtopic
    $query = "SELECT courses.* FROM courses
              WHERE courses.subTopicId = $targetId";

    $result = mysqli_query($con, $query);

    if ($result) {
        // Open the HTML block
        echo '<ul class="products columns-3">';

        while ($row = mysqli_fetch_assoc($result)) {
            // Output each course as HTML
            echo '<li class="product">
                <div class="product-wrap">
                    <a href="#" class="">
                        <img src="../functions/upload/image/' . $row['bannerImage'] . '" alt="">
                    </a>
                    <div class="product-btn-wrap">
                        <a href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart">
                            <i class="fa fa-shopping-basket"></i>
                        </a>
                        <a href="#" class="button wish-list"><i class="fa fa-heart"></i></a>
                    </div>
                </div>
                <div class="woocommerce-product-title-wrap">
                    <h2 class="woocommerce-loop-product__title">
                        <a href="#">' . $row['courseName'] . '</a>
                    </h2>
                </div>
                <span class="price">
                    <ins>
                        <span class="woocommerce-Price-amount amount">
                            <span class="woocommerce-Price-currencySymbol">$</span>' . $row['courseCost'] . '
                        </span>
                    </ins>
                </span>
                <div class="star-rating"></div>
            </li>';
        }

        // Close the HTML block
        echo '</ul>';
    } else {
        echo 'No courses found.';
    }
} else {
    echo 'Subtopic ID not provided.';
}

?>
