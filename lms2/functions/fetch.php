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
                    <a href="#" class="">
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
                            <span class="woocommerce-Price-currencySymbol">$</span>' . $courseCost . '
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

if (isset($_POST['cart'])) {
    // Get the updated cart from the AJAX request
    $updatedCart = $_POST['cart'];

    // Update the session cart with the updated cart
    $_SESSION['cart'] = $updatedCart;

    // You can also calculate the total or perform other cart-related actions here if needed
}

// Send a response back to the client (optional)
echo 'Cart updated successfully'; 

session_start();

// if (isset($_POST['remove_item'])) {
//     $itemIdToRemove = $_POST['remove_item'];
    
//     // Loop through the cart items and remove the item with a matching ID
//     $updatedCart = $_SESSION['cart'];
//     foreach ($updatedCart as $key => $item) {
//         if ($item['id'] === $itemIdToRemove) {
//             unset($updatedCart[$key]);
//             break; // Exit the loop once the item is found and removed
//         }
//     }

//     $_SESSION['cart'] = array_values($updatedCart); // Reindex the array

//     // Send a JSON response to indicate the operation's success
//     $response = ['success' => true, 'updatedCart' => $_SESSION['cart']];
//     echo json_encode($response);
// } else {
//     // Send a JSON response to indicate failure
//     $response = ['success' => false];
//     echo json_encode($response);
// }
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

?>
