<?php
// Assuming you have a database connection established
$host="localhost";
$db="saburi_lms_live";
$password="";
$username="root";


$file = $_GET['file'];

// Ensure the file exists
if (file_exists("../functions/upload/file/" . $file)) {
    // Set the appropriate headers
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: inline; filename="' . $file . '"');
    header('Content-Length: ' . filesize("../functions/upload/file/" . $file));

    // Output the file content
    readfile("../functions/upload/file/" . $file);
} else {
    echo 'File not found';
}


$con = mysqli_connect($host,$username,$password,$db);
if (isset($_GET['subtopicId'])) {
    $targetId = $_GET['subtopicId'];

    // Pagination parameters
    $perPage = 5;
    $page = isset($_GET['page']) ? $_GET['page'] : 1;
    $offset = ($page - 1) * $perPage;

    // Query to fetch courses based on the selected subtopic with pagination
    $query = "SELECT courses.* FROM courses
              WHERE courses.subTopicId = $targetId
              LIMIT $offset, $perPage";

    $result = mysqli_query($con, $query);

    if ($result) {
        $courses = [];
        // Open the HTML block
        echo '<ul class="products columns-3">';

        while ($row = mysqli_fetch_assoc($result)) {
            $courses[] = $row;
            $id = $row['id'];
            $courseImage = $row['bannerImage'];
            $courseName = $row['courseName'];
            $courseCost = $row['courseCost'];

            // Output each course as HTML
            echo '<li class="product">
                <div class="product-wrap">
                    <a href="course_single.php?course_id=' . $id . '">
                        <img src="../functions/upload/image/' . $courseImage . '" alt="">
                    </a>
                    <div class="product-btn-wrap">
                        <a href="cart.php?id=' . $id . '&name=' . $courseName . '&price=' . $courseCost . '&image=' . $courseImage . '" class="button product_type_simple add_to_cart_button ajax_add_to_cart" 
                            data-product-id="' . $id . '"
                            data-product-name="' . $courseName . '"
                            data-product-price="' . $courseCost . '"
                            data-product-image="' . $courseImage . '">
                            <i class="fa fa-shopping-basket"></i>
                        </a>
                        <a href="#" class="button wish-list"><i class="fa fa-heart"></i></a>
                    </div>
                </div>
                <div class="woocommerce-product-title-wrap">
                    <h2 class="woocommerce-loop-product__title">
                        <a href="#">' . $courseName . '</a>
                    </h2>
                </div>
                <span class="price">
                    <ins>
                        <span class="woocommerce-Price-amount amount">
                            <span class="woocommerce-Price-currencySymbol">&#8377;</span>' . $courseCost . '
                        </span>
                    </ins>
                </span>
                <div class="star-rating"></div>
            </li>';
        }

        // Close the HTML block
        echo '</ul>';

        // Output pagination links
        echo '<nav class="woocommerce-pagination">';
        echo ' <ul class="page-numbers">';
        $totalCoursesQuery = mysqli_query($con, "SELECT COUNT(*) as total FROM courses WHERE subTopicId = $targetId");
        $totalCoursesData = mysqli_fetch_assoc($totalCoursesQuery);
        $totalCourses = $totalCoursesData['total'];
        $totalPages = ceil($totalCourses / $perPage);

         for ($i = 1; $i <= $totalPages; $i++) : ?>
            <li>
                <a href="?page=<?= $i ?>" <?= $i == $page ? 'class="page-numbers current"' : 'class="page-numbers"' ?>>
                    <?= $i ?>
                </a>
            </li>
        <?php endfor;

        echo '</ul></nav>';
    } else {
        echo 'No courses found.';
    }
} else {
    echo 'Subtopic ID not provided.';
}

if (isset($_POST['cart'])) {
    // Get the updated cart from the AJAX request
    $updatedCart = $_POST['cart'];

    // Update the session cart with the updated cart
    $_SESSION['cart'] = $updatedCart;

    // You can also calculate the total or perform other cart-related actions here if needed
}

if (isset($_POST['remove_item'])) {
    $itemId = $_POST['remove_item'];
    // Remove the item from the cart based on its ID
    foreach ($_SESSION['cart'] as $key => $item) {
        if ($item['id'] == $itemId) {
            unset($_SESSION['cart'][$key]);
            break;
        }
    }
    // Reset array keys after item removal
    $_SESSION['cart'] = array_values($_SESSION['cart']);
}


if (isset($_POST['woocommerce_checkout_place_order'])) {
    // Data to be inserted into the 'Orders' table
    $orderdate = date('Y-m-d H:i:s'); // Get the current date and time
    $subscribedby = $_POST['subscribedby']; // Replace with how you determine this
    $subscriberid = $_POST['subscriberid']; // Replace with how you determine this
    $paymentstatus = 'notpaid';
    $paymentdetails = ''; // You can populate this with payment details
    $total = $_POST['total']; // Replace with how you calculate the total
    $couponcode = $_POST['couponcode']; // Get the coupon code from the form
    $discount = 0; // Calculate or set the discount amount
    $grandtotal = $total - $discount;

    $insertOrderQuery = "INSERT INTO Orders (orderdate, subscribedby, subscriberid, paymentstatus, paymentdetails, total, couponcode, discount, grandtotal,createdOn)
            VALUES ('$orderdate', '$subscribedby', '$subscriberid', '$paymentstatus', '$paymentdetails', '$total', '$couponcode', '$discount', '$grandtotal',NOW())";

    if ($con->query($insertOrderQuery) === TRUE) {
        $orderId = $con->insert_id; // Get the ID of the newly inserted order
        $cartData = json_decode($_POST['cart'], true);

        foreach ($cartData as $item) {
            $courseId = $item['id']; // Assuming your cart data has an 'id' field for course ID
            $qty = $item['quantity'];
            $rate = $item['price'];

            // Insert data into the 'Orderdetails' table for each item
            $insertOrderDetailsQuery = mysqli_query($con, "INSERT INTO Orderdetails (OrderId, CourseId, quantity, price, createdOn) VALUES ($orderId, $courseId, $qty, $rate,NOW())");
        
            if ($insertOrderDetailsQuery) {
                header("Location:../web/courselist.php");
            } else {
                echo "failed";
            }
        }

        // Redirect to a thank you page or show a success message
        echo "Order placed successfully!";
    } else {
        // Handle the error
        echo "Error: " . $con->error;
    }

    // Close the database connection
    $con->close();
}



?>
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
