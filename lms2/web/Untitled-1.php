<?php
include("includes/header.php");
include("../functions/list_grid.php");


                                if ($fetch_list_topic_query) {
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($fetch_list_topic_query)) {
                                        $id = $row['Id'];
                                        $topic_name = $row['topicName'];
                                        
                                    }
                                }
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
                            <img class="search-close" src="assets/images/close.png" srcset="assets/images/close%402x.png 2x" alt="">
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
            <h1>Shop List</h1>
            <ul class="list-inline mb-0">
              <li class="list-inline-item">
                <a href="#">Home</a>
              </li>
              <li class="list-inline-item">/</li>
              <li class="list-inline-item">
                  Shop List
              </li>
            </ul>
          </div>
      </div>
    </div>
  </div>
</section>


    <main class="site-main page-wrapper  woocommerce">
        <!--product section start-->
        <section class="space-3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mb-4 mb-lg-0">
                        <div class="section-title">
    <h2 class="title d-block text-left-sm">Shop</h2>
    <p class="woocommerce-result-count"> Showing 1–16 of 17 results</p>
    <form class="woocommerce-ordering float-lg-right" method="get">
        <select name="orderby" class="orderby form-control" aria-label="Shop order">
            <option value="" selected="selected">Default sorting</option>
            <option value="">Sort by popularity</option>
            <option value="">Sort by average rating</option>
            <option value="">Sort by latest</option>
            <option value="">Sort by price: low to high</option>
            <option value="">Sort by price: high to low</option>
        </select>
        <input type="hidden" name="paged" value="1">
    </form>
</div>
<ul class="products columns-3">
<?php foreach ($products as $product) {
    echo '<li class="product">';
    echo '<div class="product-wrap">';
    echo '<a href="#" class=""><img src="' . $product['image'] . '" alt=""></a>';
    echo '<div class="product-btn-wrap">';
    echo '<a href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart">';
    echo '<i class="fa fa-shopping-basket"></i>';
    echo '</a>';
    echo '<a href="#" class="button wish-list"><i class="fa fa-heart"></i></a>';
    echo '</div>';
    echo '</div>';
    echo '<div class="woocommerce-product-title-wrap">';
    echo '<h2 class="woocommerce-loop-product__title">';
    echo '<a href="#">' . $product['name'] . '</a>';
    echo '</h2>';
    echo '</div>';

    if ($product['on_sale']) {
        echo '<span class="onsale">Sale!</span>';
    }

    echo '<span class="price">';
    if ($product['on_sale']) {
        echo '<del><span class="woocommerce-Price-amount amount">';
        echo '<span class="woocommerce-Price-currencySymbol">$</span>' . $product['sale_price'];
        echo '</span></del>';
    }
    echo '<ins><span class="woocommerce-Price-amount amount">';
    echo '<span class="woocommerce-Price-currencySymbol">$</span>' . $product['price'];
    echo '</span></ins>';
    echo '</span>';
    echo '</li>';
}
?>
    <!-- <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p1.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="onsale">Sale!</span>
        <span class="price">
            <del>
                <span class="woocommerce-Price-amount amount">
                    <span class="woocommerce-Price-currencySymbol">$</span>
                    45.00
                </span>
            </del>
            <ins>
                <span class="woocommerce-Price-amount amount">
                    <span class="woocommerce-Price-currencySymbol">$</span>
                    42.00
                </span>
            </ins>
        </span>

        <div class="star-rating"></div>
    </li>
    <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p2.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product last">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p3.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p4.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p5.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product last">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p6.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p7.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p8.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product last">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p9.jpg" alt="">
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
                <a href="#">Nike Running Plus jacket with printed panels in black</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p1.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="onsale">Sale!</span>
        <span class="price">
            <del>
                <span class="woocommerce-Price-amount amount">
                    <span class="woocommerce-Price-currencySymbol">$</span>
                    45.00
                </span>
            </del>
            <ins>
                <span class="woocommerce-Price-amount amount">
                    <span class="woocommerce-Price-currencySymbol">$</span>
                    42.00
                </span>
            </ins>

        </span>
    <div class="star-rating"></div>

    </li>
    <li class="product">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p2.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li>
    <li class="product last">
        <div class="product-wrap">
            <a href="#" class="">
                <img src="assets/images/shop/p3.jpg" alt="">
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
                <a href="#">Stitched leather sports shoe</a>
            </h2>
        </div>
        <span class="price">
            <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">$</span> 18.00
            </span>
        </span>
        <div class="star-rating"></div>

    </li> -->
</ul>

                        <nav class="woocommerce-pagination">
                            <ul class="page-numbers">
                                <li><span aria-current="page" class="page-numbers current">1</span></li>
                                <li><a class="page-numbers" href="https://ha.motologgers.com/shop/page/2/">2</a></li>
                                <li><a class="next page-numbers" href="https://ha.motologgers.com/shop/page/2/">→</a></li>
                            </ul>
                        </nav>
                    </div>

                    <!-- product Sidebar start-->
<div class="col-lg-4 widget-area ">
    <section id="woocommerce_product_search-2" class="widget woocommerce widget_product_search">
        <form role="search" method="get" class="woocommerce-product-search" action="#">
            <label class="screen-reader-text" for="woocommerce-product-search-field-0">
                Search for:</label>
            <input type="search" id="woocommerce-product-search-field-0" class="search-field" placeholder="Search products…" value="" name="s">
            <button type="submit" value="Search">Search</button>
            <input type="hidden" name="post_type" value="product">
        </form>
    </section>
    <!-- <section id="woocommerce_price_filter-2" class="widget woocommerce widget_price_filter">
        <h3 class="widget-title">Filter by price</h3>
        <form method="get" action="#">
            <div class="price_slider_wrapper">
                <div class="price_slider ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                     
                    <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 22.2222%; width: 44.4444%;"></div>
                    <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 22.2222%;"></span>
                    <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 66.6667%;"></span>
                </div>
                <div class="price_slider_amount" data-step="10">
                    <input type="text" id="min_price" name="min_price" value="0" data-min="0" placeholder="Min price" style="display: none;">
                    <input type="text" id="max_price" name="max_price" value="90" data-max="90" placeholder="Max price" style="display: none;">
                    <button type="submit" class="button">Filter</button>
                    <div class="price_label">
                        Price: <span class="from">৳&nbsp;20</span> — <span class="to">৳&nbsp;60</span>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </form>
    </section> -->
    <section id="woocommerce_product_categories-2" class="widget woocommerce widget_product_categories">
                <h3 class="widget-title">Product categories</h3>
                <div class="edutim-course-topic">
                    <div class="accordion" id="accordionExample">
                        <?php $index = 0; ?>
                        <?php foreach ($fetch_list_topic_query as $row) : ?>
                            <div class="card">
                                <div class="card-header" id="heading<?= $index ?>">
                                    <h2 class="mb-0">
                                        <button class="btn-block text-left curriculmn-title-btn" type="button" data-toggle="collapse" data-target="#collapse<?= $row['Id'] ?>" >
                                            <h4 class="curriculmn-title"><?= $row['topicName'] ?></h4>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse<?= $row['Id'] ?>" class="collapse"  data-parent="#accordionExample">
                                    <div class="course-lessons">
                                        <?php foreach ($fetch_list_subtopic_query as $subtopic) : ?>
                                            <?php if ($subtopic['topicId'] == $row['Id']) : ?>
                                                <div class="single-course-lesson">
                                                    <div class="course-topic-lesson">
                                                        <!-- <i class="fab fa-youtube"></i> -->
                                                        <!-- <a href="#" class="subtopic-link" data-subtopic-id="<?= $subtopic['id']; ?>"> -->
                                                        <a href="#" class="subtopic-link" data-subtopic-id="<?= $subtopic['id']; ?>"><?= $subtopic['subTopicName'].$subtopic['id'] ?></a>
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
                    <img width="300" height="300" src="assets/images/shop/p1.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                    <span class="product-title">V-Neck T-Shirt</span>
                </a>

                <span class="woocommerce-Price-amount amount">
                    <span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>15.00</span> – <span class="woocommerce-Price-amount amount">
                <span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>20.00</span>
            </li>
            <li> <a href="#">
                    <img width="300" height="300" src="assets/images/shop/p2.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                    <span class="product-title">Album</span>
                </a>

                <span class="woocommerce-Price-amount amount">
                    <span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>15.00</span>
            </li>
            <li>
                <a href="#">
                    <img width="300" height="300" src="assets/images/shop/p3.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                    <span class="product-title">Hoodie</span>
                </a>
                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>42.00</span> – <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>45.00</span>
            </li>
            <li>
                <a href="#">
                    <img width="300" height="300" src="assets/images/shop/p4.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                    <span class="product-title">Single</span>
                </a>

                <del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>3.00</span></del>
                <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>2.00</span></ins>
            </li>
            <li>
                <a href="#">
                    <img width="300" height="300" src="assets/images/shop/p5.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="">
                    <span class="product-title">Hoodie with Logo</span>
                </a>
                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">৳&nbsp;</span>45.00</span>
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

<section class="cta-2">
    <div class="container">
        <div class="row align-items-center subscribe-section ">
            <div class="col-lg-6">
                <div class="section-heading white-text">
                    <span class="subheading">Newsletter</span>
                    <h3>Join our community of students</h3>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="subscribe-form">
                    <form action="#">
                        <input type="text" class="form-control" placeholder="Email Address">
                        <a href="#" class="btn btn-main">Subscribe<i class="fa fa-angle-right ml-2"></i> </a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="footer pt-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 mr-auto col-sm-6 col-md-6">
				<div class="widget footer-widget mb-5 mb-lg-0">
					<h5 class="widget-title">About Us</h5>
					<p class="mt-3">Veniam Sequi molestias aut necessitatibus optio magni at natus accusamus.Lorem ipsum dolor sit amet, consectetur adipisicin gelit, sed do eiusmod tempor incididunt .</p>
					<ul class="list-inline footer-socials">
						<li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="list-inline-item"> <a href="#"><i class="fab fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
					</ul>
				</div>
			</div>
			
			<div class="col-lg-2 col-sm-6 col-md-6">
				<div class="footer-widget mb-5 mb-lg-0">
					<h5 class="widget-title">Company</h5>
					<ul class="list-unstyled footer-links">
						<li><a href="#">About us</a></li>
						<li><a href="#">Contact us</a></li>
						<li><a href="#">Projects</a></li>
						<li><a href="#">Terms & Condition</a></li>
						<li><a href="#">Privacy policy</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-2 col-sm-6 col-md-6">
				<div class="footer-widget mb-5 mb-lg-0">
					<h5 class="widget-title">Courses</h5>
					<ul class="list-unstyled footer-links">
						<li><a href="#">SEO Business</a></li>
						<li><a href="#">Digital Marketing</a></li>
						<li><a href="#">Graphic Design</a></li>
						<li><a href="#">Site Development</a></li>
						<li><a href="#">Social Marketing</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 col-md-6">
				<div class="footer-widget footer-contact mb-5 mb-lg-0">
					<h5 class="widget-title">Contact </h5>
					
					<ul class="list-unstyled">
						<li><i class="bi bi-headphone"></i>
							<div>
								<strong>Phone number</strong>
								(68) 345 5902
							</div>
							
						</li>
						<li> <i class="bi bi-envelop"></i>
							<div>
								<strong>Email Address</strong>
								info@yourdomain.com
							</div>
						</li>
						<li><i class="bi bi-location-pointer"></i>
							<div>
								<strong>Office Address</strong>
								Moon Street Light Avenue
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-btm">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-6">
					<div class="footer-logo">
						<img src="assets/images/logo-white.png" alt="Edutim" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="copyright text-lg-center">
						<p>@ Copyright reserved to Edutim.Proudly Crafted by <a href="https://themeturn.com">Dreambuzz</a> </p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<div class="fixed-btm-top">
	<a href="#top-header" class="js-scroll-trigger scroll-to-top"><i class="fa fa-angle-up"></i></a>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function() {
        $('.subtopic-link').click(function(event) {
            event.preventDefault();
            var subtopicId = $(this).data('subtopic-id');

            $.ajax({
                type: 'POST',
                url: 'fetch.php', // Replace with the actual server script URL
                data: { subtopicId: subtopicId },
                success: function(response) {
                    // Update the course details in the cart
                    $('#course-details').html(response);
                },
                error: function() {
                    alert('Error fetching course details');
                }
            });
        });
    });
</script>


    <?php
include("includes/footer.php");
?>