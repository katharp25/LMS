<?php
session_start();
include("includes/header.php");
include("../functions/list_grid.php");

$query = "SELECT * FROM courses"; // Adjust the table name as needed

$conditions = []; // Array to store conditions

// Subtopic ID
if (isset($_GET['subtopicId'])) {
    $subtopicId = mysqli_real_escape_string($con, $_GET['subtopicId']);
    $conditions[] = "subTopicId = $subtopicId";
}

// Search term
if (isset($_GET['s']) && !empty($_GET['s'])) {
    $searchTerm = mysqli_real_escape_string($con, $_GET['s']);
    $conditions[] = "(courseName LIKE '%$searchTerm%' OR courseDesc LIKE '%$searchTerm%')";
}

// Combine conditions if any
if (!empty($conditions)) {
    $query .= " WHERE " . implode(" AND ", $conditions);
}

if (isset($_GET['orderby'])) {
    $orderby = $_GET['orderby'];
    switch ($orderby) {
        case 'popularity':
            $query .= " ORDER BY popularity_column ASC";
            break;
        case 'average_rating':
            $query .= " ORDER BY rating_column ASC";
            break;
        case 'latest':
            $query .= " ORDER BY date_column DESC";
            break;
        case 'price_low_to_high':
            $query .= " ORDER BY courseCost ASC";
            break;
        case 'price_high_to_low':
            $query .= " ORDER BY courseCost DESC";
            break;
        // Add more cases as needed
        default:
            // Default case
            break;
    }
}

// echo $query;
$allcourse = mysqli_query($con, $query);

// Fetch topics
if ($fetch_list_topic_query) {
    while ($row = mysqli_fetch_assoc($fetch_list_topic_query)) {
        $id = $row['Id'];
        $topic_name = $row['topicName'];
    }
}

$recordsPerPage = 5; // Adjust this value based on your preference
$totalRecords = mysqli_num_rows($allcourse);
$totalPages = ceil($totalRecords / $recordsPerPage);

// Make sure the current page is within a valid range
$currentPage = max(1, min($totalPages, isset($_GET['page']) ? (int)$_GET['page'] : 1));
$offset = ($currentPage - 1) * $recordsPerPage;

// Modify the query to include LIMIT and OFFSET
$query .= " LIMIT $recordsPerPage OFFSET $offset";

// Execute the modified query
$allcourse = mysqli_query($con, $query);

?>




<!--search overlay end-->


<section class="page-header">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="page-header-content">
                    <h1>Course List</h1>
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


<main class="site-main page-wrapper woocommerce">
    <!-- Product section start -->
    <section class="space-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-4 mb-lg-0">
                    <div class="section-title">
                        <h2 class="title d-block text-left-sm">Shop</h2>
                        <form class="woocommerce-ordering float-lg-right" method="get">
                            <select name="orderby" class="orderby form-control" aria-label="Shop order"
                                onchange="handleSortChange(this)">
                                <option value="" selected="selected">Default sorting</option>
                                <option value="popularity">Sort by popularity</option>
                                <option value="average_rating">Sort by average rating</option>
                                <option value="latest">Sort by latest</option>
                                <option value="price_low_to_high">Sort by price: low to high</option>
                                <option value="price_high_to_low">Sort by price: high to low</option>
                            </select>
                        </form>
                        <p class="woocommerce-result-count"> Showing 1–<?php echo mysqli_num_rows($allcourse); ?> of
                            <?php echo mysqli_num_rows($allcourse); ?> results</p>
                        <!-- Other sorting options here -->
                    </div>
                    <ul class="products columns-3">
                        <?php
                    if (isset($_GET['subtopicId']) && isset($_GET['orderby'])) {
                        $subtopicId = $_GET['subtopicId'];
                        
                        // Use $subtopicId in your query to fetch filtered courses
                        $filteredCourses = mysqli_query($con, "SELECT * FROM courses WHERE subtopicId = $subtopicId ORDER BY courseCost ASC");
                        
                        // Loop through and display filtered courses
                        while ($row = mysqli_fetch_array($filteredCourses)) {
                            $coursename = $row["courseName"];
                            $coursePrice = $row["courseCost"];
                            $courseDes = $row["courseDesc"];
                            $bannerImage = $row["bannerImage"];
                    ?>
                        <li class="product">
                            <div class="product-wrap">
                                <!-- Display product information based on your database columns -->
                                <a href="#">
                                    <!-- You can use PHP variables here to display dynamic content -->
                                    <img src="../functions/upload/image/<?= $bannerImage ?>"
                                        style="height:200px; width:300px;" alt="">
                                </a>
                                <div class="product-btn-wrap">
                                    <!-- Add to cart and wishlist buttons -->
                                    <a href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart">
                                        <i class="fa fa-shopping-basket"></i>
                                    </a>
                                    <a href="#" class="button wish-list"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="woocommerce-product-title-wrap">
                                <!-- Display product title -->
                                <h2 class="woocommerce-loop-product__title">
                                    <a href="#"><?php echo $coursename; ?></a>
                                </h2>
                            </div>
                            <span class="price">
                                <!-- Display product price -->
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">&#8377;</span> <?php echo $coursePrice; ?>
                                </span>
                            </span>
                            <div class="star-rating"></div>
                        </li>
                        <?php
    }
} else {
    // Display all courses if no subtopicId is present
    while ($row = mysqli_fetch_array($allcourse)) {
        $id=$row['id'];
        $coursename = $row["courseName"];
        $coursePrice = $row["courseCost"];
        $courseDes = $row["courseDesc"];
        $bannerImage = $row["bannerImage"];
?>
                        <li class="product">
                            <div class="product-wrap">
                                <!-- Display product information based on your database columns -->
                                <a href="course_single.php?course_id=<?= $id ?>">
                                    <img src="../functions/upload/image/<?= $bannerImage ?>" style="height:300px;width:200px" alt="">
                                </a>
                                <div class="product-btn-wrap">
                                    <!-- Add to cart and wishlist buttons -->
                                    <a href="" class="button product_type_simple add_to_cart_button ajax_add_to_cart" 
                                        data-product-id="<?= $id ?>"
                                        data-product-name="<?= $coursename ?>"
                                        data-product-price="<?= $coursePrice ?>"
                                        data-product-image="<?= $bannerImage ?>">
                                        <i class="fa fa-shopping-basket"></i>
                                    </a>
                                    <a href="#" class="button wish-list"><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="woocommerce-product-title-wrap">
                                <!-- Display product title -->
                                <h2 class="woocommerce-loop-product__title">
                                    <a href="#"><?php echo $coursename; ?></a>
                                </h2>
                            </div>
                            <span class="price">
                                <!-- Display product price -->
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">$</span> <?php echo $coursePrice; ?>
                                </span>
                            </span>
                            <div class="star-rating"></div>
                        </li>
                        <?php
    }
}
?>
                    </ul>
                    <!-- </div> -->
                    <!-- </div>
        </div>
    </section> -->

    <nav class="woocommerce-pagination">
    <ul class="page-numbers">
        <?php for ($i = 1; $i <= $totalPages; $i++) : ?>
            <li>
                <a class="page-numbers" href="?page=<?php echo $i; ?><?php echo isset($_GET['subtopicId']) ? '&subtopicId=' . $_GET['subtopicId'] : ''; ?><?php echo isset($_GET['s']) ? '&s=' . $_GET['s'] : ''; ?><?php echo isset($_GET['orderby']) ? '&orderby=' . $_GET['orderby'] : ''; ?>"><?php echo $i; ?></a>
            </li>
        <?php endfor; ?>
    </ul>
</nav>


                </div>

                <!-- product Sidebar start-->
                <div class="col-lg-4 widget-area">
                    <section id="woocommerce_product_search-2" class="widget woocommerce widget_product_search">
                        <form role="search" method="get" class="woocommerce-product-search" action="#">
                            <label class="screen-reader-text" for="woocommerce-product-search-field-0">Search
                                for:</label>
                            <input type="search" id="woocommerce-product-search-field-0" class="search-field"
                                placeholder="Search products…" value="" name="s">

                            <!-- Include hidden fields for existing query parameters -->
                            <?php
                                if (isset($_GET['subtopicId'])) {
                                    echo '<input type="hidden" name="subtopicId" value="' . htmlspecialchars($_GET['subtopicId']) . '">';
                                }
                                if (isset($_GET['orderby'])) {
                                    echo '<input type="hidden" name="orderby" value="' . htmlspecialchars($_GET['orderby']) . '">';
                                }
                                ?>

                            <button type="submit" value="Search">Search</button>
                            <input type="hidden" name="post_type" value="product">
                        </form>
                    </section>
                    <!-- </div> -->

                    <!-- </div> -->

                    <section id="woocommerce_product_categories-2" class="widget woocommerce widget_product_categories">
                        <h3 class="widget-title">Product categories</h3>
                        <div class="edutim-course-topic">
                            <div class="accordion" id="accordionExample">
                                <?php $index = 0; ?>
                                <?php foreach ($fetch_list_topic_query as $row) : ?>
                                <div class="card">
                                    <div class="card-header" id="heading<?= $index ?>">
                                        <h2 class="mb-0">
                                            <button class="btn-block text-left curriculmn-title-btn" type="button"
                                                data-toggle="collapse" data-target="#collapse<?= $row['Id'] ?>">
                                                <h4 class="curriculmn-title"><?= $row['topicName'] ?></h4>
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapse<?= $row['Id'] ?>" class="collapse"
                                        data-parent="#accordionExample">
                                        <div class="course-lessons">
                                            <?php foreach ($fetch_list_subtopic_query as $subtopic) : ?>
                                            <?php if ($subtopic['topicId'] == $row['Id']) : ?>
                                            <div class="single-course-lesson">
                                                <div class="course-topic-lesson">
                                                    <!-- <i class="fab fa-youtube"></i> -->

                                                    <!-- <a href="<?= $subtopic['id']; ?>"><?= $subtopic['subTopicName'].$subtopic['id'] ?></a> -->
                                                    <!-- Change the subtopic link in your PHP code -->
                                                    <a href="#" class="subtopic-link"
                                                        data-subtopic-id="<?= $subtopic['id']; ?>"><?= $subtopic['subTopicName'] ?></a>


                                                </div>
                                            </div>
                                            <?php endif; ?>
                                            <?php endforeach; ?>
                                        </div>
                                    </div>
                                </div>
                                <?php $index++; ?>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </section>


                    <section id="woocommerce_top_rated_products-2" class="widget woocommerce widget_top_rated_products">
                        <h3 class="widget-title">Top rated products</h3>
                        <ul class="product_list_widget">
                            <li>
                                <a href="#">
                                    <img width="300" height="300" src="assets/images/shop/p1.jpg"
                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                                    <span class="product-title">V-Neck T-Shirt</span>
                                </a>

                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>15.00</span> – <span
                                    class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>20.00</span>
                            </li>
                            <li> <a href="#">
                                    <img width="300" height="300" src="assets/images/shop/p2.jpg"
                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                                    <span class="product-title">Album</span>
                                </a>

                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>15.00</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img width="300" height="300" src="assets/images/shop/p3.jpg"
                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                                    <span class="product-title">Hoodie</span>
                                </a>
                                <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">৳&nbsp;</span>42.00</span> – <span
                                    class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">৳&nbsp;</span>45.00</span>
                            </li>
                            <li>
                                <a href="#">
                                    <img width="300" height="300" src="assets/images/shop/p4.jpg"
                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                                    <span class="product-title">Single</span>
                                </a>

                                <del><span class="woocommerce-Price-amount amount"><span
                                            class="woocommerce-Price-currencySymbol">৳&nbsp;</span>3.00</span></del>
                                <ins><span class="woocommerce-Price-amount amount"><span
                                            class="woocommerce-Price-currencySymbol">৳&nbsp;</span>2.00</span></ins>
                            </li>
                            <li>
                                <a href="#">
                                    <img width="300" height="300" src="assets/images/shop/p5.jpg"
                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                                    <span class="product-title">Hoodie with Logo</span>
                                </a>
                                <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">৳&nbsp;</span>45.00</span>
                            </li>
                        </ul>
                    </section>
                </div>
                <!-- product section end-->
            </div>
        </div>
    </section>
    <!-- product section end-->


</main>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Add a click event to all elements with the class 'subtopic-link'
    var subtopicLinks = document.querySelectorAll('.subtopic-link');

    subtopicLinks.forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault();

            // Get the subtopic ID from the data attribute
            var subtopicId = link.dataset.subtopicId;

            // Get the current URL
            var url = new URL(window.location.href);

            // Update the URL with the new subtopic ID
            url.searchParams.set("subtopicId", subtopicId);

            // Log the URL for debugging
            console.log("Updated URL after clicking subtopic:", url.toString());

            // Update the URL
            window.location.href = url.toString();
        });
    });

    // Add a change event to the search input
    var searchInput = document.querySelector('.search-field');
    searchInput.addEventListener('input', function() {
        updateUrlWithSearchTerm();
    });

    // Add a change event to the sorting select
    var sortingSelect = document.querySelector('.orderby');
    sortingSelect.addEventListener('change', function() {
        updateUrlWithSorting();
    });

    function updateUrlWithSearchTerm() {
        // Get the search term from the input
        var searchTerm = searchInput.value.trim();

        // Get the current URL
        var url = new URL(window.location.href);

        // Update the URL with the new search term
        if (searchTerm !== "") {
            url.searchParams.set("s", searchTerm);
        } else {
            // Remove the s parameter if the search term is empty
            url.searchParams.delete("s");
        }

        // Remove subtopicId when updating search term
        url.searchParams.delete("subtopicId");

        // Log the URL for debugging
        console.log("Updated URL after search term change:", url.toString());

        // Update the URL
        window.location.href = url.toString();
    }

    function updateUrlWithSorting() {
        // Get the selected value from the sorting select
        var selectedValue = sortingSelect.value;

        // Get the current URL
        var url = new URL(window.location.href);

        // Update the URL with the new sorting parameter
        if (selectedValue !== "") {
            url.searchParams.set("orderby", selectedValue);
        } else {
            // Remove the orderby parameter if it's empty
            url.searchParams.delete("orderby");
        }

        // Log the URL for debugging
        console.log("Updated URL after sorting change:", url.toString());

        // Update the URL
        window.location.href = url.toString();
    }
});

</script>
<script>

// AJAX request to add a product to the cart
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
</script>

<?php
include("includes/footer.php");
?>