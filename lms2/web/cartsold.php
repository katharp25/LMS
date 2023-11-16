<?php
//session_start(); // Start the session at the very beginning

include("includes/header.php");
// include("..functions/functions.php");
if (isset($_SESSION['cartCount'])) {
    $cartCount = $_SESSION['cartCount'];
} else {
    $cartCount = 0; // Default value if not set
}
// Check if a product is being added to the cart
if (!isset($_SESSION['cartCount'])) {
    $_SESSION['cartCount'] = [];
}

// Check if an item was added to the cart
if (isset($_GET['id'])) {
    $product = [
        'id' => $_GET['id'],
        'name' => $_GET['name'],
        'price' => $_GET['price'],
        'image' => $_GET['image'],
    ];

    // Add the product to the cart
    $_SESSION['cart'][] = $product;
}



// //session_start();
// include("includes/header.php");

// if (!isset($_SESSION['cart'])) {
//     $_SESSION['cart'] = [];
// }

// if (isset($_GET['id'])) {
//     $product = [
//         'id' => $_GET['id'],
//         'name' => $_GET['name'],
//         'price' => $_GET['price'],
//         'image' => $_GET['image'],
//     ];

//     $existingProductIndex = -1;

//     // Check if the product with the same ID already exists in the cart
//     foreach ($_SESSION['cart'] as $index => $item) {
//         if ($item['id'] == $product['id']) {
//             $existingProductIndex = $index;
//             break;
//         }
//     }

//     if ($existingProductIndex >= 0) {
//         // If the product exists, update its quantity
//         $_SESSION['cart'][$existingProductIndex]['quantity'] += 1;
//     } else {
//         // If the product is not in the cart, add it
//         $product['quantity'] = 1;
//         $_SESSION['cart'][] = $product;
//     }
// }

// Rest of your code to display the cart and quantities
?>





<!--search overlay start-->
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
                    <h1>Cart</h1>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="list-inline-item">/</li>
                        <li class="list-inline-item">
                            Cart
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<main class="site-main woocommerce single single-product page-wrapper">
    <!--shop category start-->
    <section class="space-3">
        <div class="container sm-center">
            <div class="row">
                <div class="col-lg-8">
                    <article id="post-6" class="post-6 page type-page status-publish hentry">
                        <!-- .entry-header -->
                        <div class="entry-content">
                            <div class="woocommerce">
                                <div class="woocommerce-notices-wrapper"></div>
                                <form class="woocommerce-cart-form" action="" method="">
                                    <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents"
                                        cellspacing="0">
                                        <thead>
                                            <tr>

                                                <th class="product-name">Course Name</th>
                                                <th class="product-price">Course Price</th>
                                                <th class="product-quantity">Course Quantity</th>
                                                <th class="product-total-quantity">Total Quantity</th>

                                                <th class="product-subtotal">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php 
                                             foreach ($_SESSION['cart'] as $key => $item) :?>
                                            <tr class="woocommerce-cart-form__cart-item cart_item">

                                                <td class="product-name">
                                                    <?= $item['name'] ?></a>
                                                </td>


                                                <td class="product-price" data-title="Price">
                                                    <span class="woocommerce-Price-amount amount"><span
                                                            class="woocommerce-Price-currencySymbol">$</span><?= $item['price'] ?></span>
                                                </td>

                                                <!-- Inside your loop that displays cart items -->
                                                <td class="product-quantity" data-title="Quantity">
                                                    <div class="quantity">
                                                        <label class="screen-reader-text" for="quantity_<?= $item['id'] ?>">Quantity</label>
                                                        <input type="number" id="quantity_<?= $item['id'] ?>"
                                                            class="input-text qty text" step="1" min="1" name="quantity"
                                                            value="1" title="Qty" size="4" pattern="[0-9]*"
                                                            inputmode="numeric"
                                                            aria-labelledby="<?= $item['name'] ?> quantity"
                                                            oninput="updateTotalQuantity(<?= $item['id'] ?>, <?= $item['price'] ?>)">
                                                    </div>
                                                </td>
                                                <td class="product-quantity" data-title="Total Quantity">
                                                    <div class="quantity">
                                                        <label class="screen-reader-text" for="quantity_total_<?= $item['id'] ?>">Total Quantity</label>
                                                        <input type="text" id="quantity_total_<?= $item['id'] ?>"
                                                            class="input-text" name="quantity_total"
                                                            value="<?= $item['price'] ?>" title="Total Quantity" 
                                                            readonly>
                                                    </div>
                                                </td>

                                                <td class="product-remove" data-title="Action">
                                                    <button type="submit" class="remove-item btn btn-danger"
                                                        data-id="<?= $item['id'] ?>">Remove</button>
                                                </td>


                                            </tr>


                                            <?php endforeach; ?>
                                            <tr>
                                                <td colspan="6" class="actions">
                                                    <div class="coupon">
                                                        <label for="coupon_code">Coupon:</label> <input type="text"
                                                            name="coupon_code" class="input-text" id="coupon_code"
                                                            value="" placeholder="Coupon code"> <button type="submit"
                                                            class="button" name="apply_coupon"
                                                            value="Apply coupon">Apply coupon</button>
                                                    </div>
                                                    <button type="submit" class="button" name="update_cart"
                                                        value="Update cart" disabled="">Update cart</button>
                                                    <input type="hidden" id="woocommerce-cart-nonce"
                                                        name="woocommerce-cart-nonce" value="27da9ce3e8"><input
                                                        type="hidden" name="_wp_http_referer" value="/cart/">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div><!-- .entry-content -->
                    </article>
                </div>
                <div class="col-lg-4">
                    <div class="cart-collaterals">
                        <div class="cart_totals ">
                            <h2>Cart totals</h2>
                            <table cellspacing="0" class="shop_table shop_table_responsive">
                                <tbody>
                                    <!-- <tr class="cart-subtotal">
                                        <th>Subtotal</th>
                                        <td class="product-subtotal" data-title="Subtotal">
                                            <span class="woocommerce-Price-amount amount" id="cart-sub-total">
                                                <span class="woocommerce-Price-currencySymbol">$</span>
                                            </span>
                                        </td>
                                    </tr> -->
                                    <tr class="order-total">
                                        <th>Total</th>
                                        <td data-title="Total"><strong><span class="woocommerce-Price-amount amount"
                                                    id="cart-total"><span
                                                        class="woocommerce-Price-currencySymbol">$</span></span></strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="wc-proceed-to-checkout">
                            <form action="checkout.php" method="post" id="checkout-form">
                                    <?php
                                    // Loop through cart items and add hidden input fields for each item
                                    foreach ($_SESSION['cart'] as $key => $item) {
                                        echo '<input type="hidden" name="cart_items[' . $key . '][id]" value="' . $item['id'] . '">';
                                        echo '<input type="hidden" name="cart_items[' . $key . '][name]" value="' . $item['name'] . '">';
                                        echo '<input type="hidden" name="cart_items[' . $key . '][price]" value="' . $item['price'] . '">';
                                        
                                        // Include additional hidden fields for quantity if needed
                                    }
                                    ?>
                                    <button type="submit" class="checkout-button button alt wc-forward">Proceed to checkout</button>
                                </form>
                                <!-- <a href="checkout.php" class="checkout-button button alt wc-forward">
                                    Proceed to checkout
                                </a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--shop category end-->
</main>




<div class="fixed-btm-top">
    <a href="#top-header" class="js-scroll-trigger scroll-to-top"><i class="fa fa-angle-up"></i></a>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

document.addEventListener('DOMContentLoaded', function () {
    function getCartItems() {
        const cartJSON = localStorage.getItem('cart');
        return JSON.parse(cartJSON) || [];
    }

    function createCartItemElement(item) {
        return `
            <div class="cart-item">
                <img src="${item.image}" alt="${item.name}">
                <h3>${item.name}</h3>
                <p>Price: $${item.price}</p>
                <button class="remove-item" data-id="${item.id}">Remove</button>
            </div>
        `;
    }

    function displayCartItems() {
        const cartItems = getCartItems();
        const cartItemsContainer = document.getElementById('cart-items');

        cartItemsContainer.innerHTML = ''; // Clear existing items

        cartItems.forEach(item => {
            const itemElement = createCartItemElement(item);
            cartItemsContainer.innerHTML += itemElement;
        });
    }

    displayCartItems();

    // Add functionality to remove items from the cart
    const removeButtons = document.querySelectorAll('.remove-item');

    removeButtons.forEach(button => {
        button.addEventListener('click', function () {
            const itemId = this.getAttribute('data-id');
            const cartItems = getCartItems();
            const updatedCart = cartItems.filter(item => item.id !== itemId);
            localStorage.setItem('cart', JSON.stringify(updatedCart));
            displayCartItems(); // Update the displayed items
        });
    });
});
// document.addEventListener('DOMContentLoaded', function() {
//     // Update cart count
//     const cartCountContainer = document.getElementById('cart-count-container');
//     const cartItems = <?php echo json_encode($_SESSION['cart']); ?>;

//     if (cartItems) {
//         cartCountContainer.innerText = cartItems.length;
//     }
// });
</script>
<!-- Add this script in your HTML file -->

<script>
// document.addEventListener('DOMContentLoaded', function() {
//     const removeButtons = document.querySelectorAll('.remove-item');

//     removeButtons.forEach(button => {
//         button.addEventListener('click', function() {
//             const itemId = this.getAttribute('data-id');

//             // Perform an AJAX request to remove the item from the cart
//             $.ajax({
//                 url: '../functions/fetch.php', // Create a separate PHP file for this operation
//                 type: 'POST',
//                 data: {
//                     remove_item: itemId
//                 },
//                 success: function(response) {
//                     console.log(response);
//                     if (response.success) {
//                         // Update the cart count
//                         const cartCountContainer = document.getElementById(
//                             'cart-count-container');
//                         const updatedCart = response.updatedCart;

//                         if (updatedCart) {
//                             cartCountContainer.innerText = updatedCart.length;
//                         }

//                         // Remove the item from the cart display
//                         this.closest('tr').remove();
//                     } else {
//                         alert('Failed to remove the item from the cart.');
//                     }
//                 }
//             });
//         });
//     });
// });

// });
</script>

<script>

// function updateTotalQuantity(itemId, itemPrice) {
//     const quantityInput = document.getElementById('quantity_' + itemId);
//     const totalQuantityInput = document.getElementById('quantity_total_' + itemId);
//     const price = parseFloat(itemPrice); // Get the price for the item
//     const quantity = parseInt(quantityInput.value);

//     // Calculate the total quantity (price * quantity)
//     const totalQuantity = price * quantity;

//     // Update the total quantity input field
//     totalQuantityInput.value = totalQuantity.toFixed(2); // Display total quantity with two decimal places
// }

</script>

<script>
// document.addEventListener('DOMContentLoaded', function() {
//     updateCartTotal(); // Calculate and display the initial cart total

//     // Function to update the cart total
//     function updateCartTotal() {
//         const cartItems = <?php echo json_encode($_SESSION['cart']); ?>;
//         let cartTotal = 0;

//         if (cartItems) {
//             cartItems.forEach(item => {
//                 const price = parseFloat(item.price);
//                 const quantityInput = document.getElementById('quantity_' + item.id);
//                 const quantity = parseInt(quantityInput.value);
//                 const totalQuantity = price * quantity;
//                 cartTotal += totalQuantity;
//             });
//         }

//         const cartTotalAmount = document.getElementById('cart-total');
//         cartTotalAmount.innerText = cartTotal.toFixed(2); // Display total with two decimal places
//     }
// });
</script>

<!-- 
    Essential Scripts
    =====================================-->

<!-- Main jQuery -->
<?php
include("includes/footer.php");
?>