<?php
include("includes/header.php");
include('../functions/list_grid.php');

if($fetch_user_contact_details_query)
{
    while($row=mysqli_fetch_assoc($fetch_user_contact_details_query))
    {
        $id = $row['id'];
        $email=$row['email'];
        $phone_no=$row['phone_no'];
        $address=$row['address'];
       
    }
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
                    <h1>Contact Us</h1>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="list-inline-item">/</li>
                        <li class="list-inline-item">
                            Contact
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="contact-info section-padding">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-6">
                <div class="section-heading center-heading">
                    <span class="subheading">Contact Us</span>
                    <h3>Have any query?</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur
                        adipisicing elit.</p>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-4">
                <div class="row">
                    <div class="col-lg-12 col-md-6">
                        <div class="contact-item">
                            <p>Email Us</p>
                            <h4><?= $email;?></h4>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-6">
                        <div class="contact-item">
                            <p>Make a Call</p>
                            <h4><?= $phone_no;?></h4>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-6">
                        <div class="contact-item">
                            <p>Corporate Office</p>
                            <h4><?= $address;?></h4>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <section class="mb-4">
                    <div class="row">
                        <div class="col-md-9 mb-md-0 mb-5">
                            <form id="contact-form" action="../functions/companyReg.php" method="POST">
                                <!--Grid row-->
                                <div class="row">
                                    <!--Grid column-->
                                    <div class="col-md-6">
                                        <div class="md-form mb-0">
                                            <input type="text" id="name" name="name" placeholder="Enter Your Name"
                                                class="form-control">
                                            <br>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="md-form mb-0">
                                            <input type="text" id="email" name="email" placeholder="Enter Your Email"
                                                class="form-control">
                                                <input type="hidden" id="email" name="admin_email" placeholder="Enter Your Email"
                                                class="form-control" value="<?= $email;?>">
                                            <br>
                                        </div>
                                    </div>


                                </div>
                                <!--Grid row-->

                                <!--Grid row-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="md-form mb-0">
                                            <input type="text" id="subject" name="subject"
                                                placeholder="Enter Your Subject" class="form-control">
                                            <br>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="md-form">
                                            <textarea type="text" id="message" name="message" rows="2"
                                                class="form-control md-textarea"
                                                placeholder="Enter Your Msessage"></textarea>
                                            <br>
                                        </div>

                                    </div>
                                </div>
                                <!--Grid row-->

                                <div class="text-center text-md-left">
                                    <button class="btn btn-main" type="submit" name="add">Send Message <i
                                            class="fa fa-angle-right ml-2"></i></button>
                                </div>
                            </form>
                        </div>
                        <!--Grid column-->

                    </div>

                </section>
            </div>
        </div>
    </div>
</section>

<?php
include("includes/footer.php");
?>