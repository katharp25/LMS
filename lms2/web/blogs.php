<?php
include("includes/header.php");
include("../functions/functions.php");
include('../functions/list_grid.php');


                            if($fetch_list_blog_query)
                            {
                                $i = 1;
                                while($row=mysqli_fetch_assoc($fetch_list_blog_query))
                                {
                                    $id = $row['id'];
                                    $title=$row['blogTitle'];
                                    $writer=$row['writer'];
                                    $image=$row['bannerImage'];
                                    $description=$row['description'];
                                    $createdOn=$row['createdOn'];

                                    $short_description = $description;
                                    $is_long_description = false;
                            
                                    // Check if description length exceeds 30 words
                                    $words = explode(" ", $description);
                                    if (count($words) > 30) {
                                        $short_description = implode(" ", array_slice($words, 0, 30));
                                        $is_long_description = true;
                                    
                                }
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
            <div class="col-lg-4">
                <div class="page-header-content">
                    <h1>Blogs</h1>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="list-inline-item">/</li>
                        <li class="list-inline-item">
                            Blogs
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
            <?php foreach ($fetch_list_blog_query as $row) : ?>
            <div class="col-md-8">
                <article class="blog-post-item">
                    <div class="post-thumb">
                        <img src="../functions/upload/image/<?= $row['bannerImage'] ?>" alt="" class="img-fluid">
                    </div>
                    <div class="post-item mt-4">
                        <div class="post-meta">
                            <span class="post-date"><i
                                    class="fa fa-calendar-alt mr-2"></i><?= $row['createdOn'] ?></span>
                        </div>
                        <h2 class="post-title"><a href="#"><?= $row['blogTitle'] ?></a></h2>
                        <div class="post-content">
                            <p><?= $short_description ?></p>
                            <?php if ($is_long_description) : ?>
                            <a href="blog_single.php?id=<?php echo $row['id']; ?>"
                                class="btn btn-main btn-small read-more-link">
                                <i class="fa fa-plus-circle mr-2"></i>Read More
                            </a>
                            <?php endif; ?>
                        </div>
                    </div>
                </article>
            </div>
            <?php endforeach; ?>



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
                        $tagQuery = mysqli_query($con, "SELECT b.*,t.name FROM blogtag as b,blogtag as t WHERE b.id = t.blog_id");

                        while ($tagData = mysqli_fetch_array($tagQuery)) {
                            $tagName = $tagData['name'];
                            echo '<a href="#">' . $tagName . '</a>';
                        }
                        ?>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function() {
    const descriptionContainer = document.querySelector(".post-content");
    const readMoreLink = descriptionContainer.querySelector(".read-more-link");
    const fullDescription = "<?= $description ?>"; // Full description

    readMoreLink.addEventListener("click", function() {
        descriptionContainer.innerHTML = fullDescription;
    });
});
</script>
<?php
include("includes/footer.php");
?>