<?php
include("includes/header.php");
include('../functions/list_grid.php');

// Retrieve the 'id' parameter from the URL
if (isset($_GET['id'])) {
    $blogId = $_GET['id'];
    $fetch_list_blog_query = mysqli_query($con, "SELECT * FROM blogs WHERE id = $blogId");

    $n=mysqli_fetch_array($fetch_list_blog_query);
    $id = $n['id'];
    $title=$n['blogTitle'];
    $writer=$n['writer'];
    $image=$n['bannerImage'];
    $description=$n['description'];
    // $tag=$n['name'];
    $createdOn=$n['createdOn'];
    

}
?>

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
                    <h1><?= $title?></h1>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="list-inline-item">/</li>
                        <li class="list-inline-item">
                            Blog Single
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


<div class="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="post-single">
                    <div class="post-thumb">
                        <img src="../functions/upload/image/<?= $image;?>" alt="" class="img-fluid">
                    </div>

                    <div class="single-post-content">
                        <div class="post-meta mt-4">
                            <span class="post-date"><i class="fa fa-calendar-alt mr-2"></i><?= $createdOn ?></span>
                            <!-- <span class="post-comment"><i class="fa fa-comments mr-2"></i>1 Comment</span> -->
                            <!-- <span><a href="#" class="post-author"><i class="fa fa-user mr-2"></i>Admin</a></span> -->
                        </div>

                        <p class="mt-4 "><?= $description ?></p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="blog-sidebar mt-5 mt-lg-0 mt-md-0">
                    <div class="widget widget_search">
                        <h4 class="widget-title">Search</h4>
                        <form role="search" class="search-form">
                            <input type="text" class="form-control" placeholder="Search">
                            <button type="submit" class="search-submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>

                    <div class="widget widget_news">
                        <h4 class="widget-title">Latest Posts</h4>
                        <ul class="recent-posts">
                            <?php foreach ($fetch_list_blog_query as $post) : ?>
                            <li>
                                <div class="widget-post-thumb">
                                    <a href="#"><img src="../functions/upload/image/<?= $post['bannerImage'] ?>" alt=""
                                            class="img-fluid"></a>
                                </div>
                                <div class="widget-post-body">
                                    <span><?php echo $post['createdOn']; ?></span>
                                    <h6> <a href="#"><?php echo $post['blogTitle']; ?></a></h6>
                                </div>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>


                    <div class="widget widget_tag_cloud">
                        <h4 class="widget-title">Tags</h4>
                        <?php
                       $tagQuery = mysqli_query($con, "SELECT name FROM blogtag WHERE id = $blogId");

                            while ($tagData = mysqli_fetch_array($tagQuery)) {
                                echo '<a href="#">' . $tagData['name'] . '</a>';
                            }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php
include("includes/footer.php");
?>