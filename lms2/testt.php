<?php 
   include('header.php');
   include('module/sponsorship.php');
   $c_data = contact_list($sql, 1);
   $v_data = venue($sql,1);
 ?>

<style>
.breadcrumbs-custom {
    background-size: cover !important;
    background-position: center center !important;
}
</style>

<div class="page">
    <!-- Breadcrumbs-->
    <section class="breadcrumbs-custom bg-image context-dark"
        style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(<?php echo $mainlink; ?>images/sponsor.jpg);">
        <div class="container">
            <ul class="breadcrumbs-custom-path">
                <li><a href="index.php">Home</a></li>
                <li class="active">Sponsorship</li>
            </ul>
            <h3 class="breadcrumbs-custom-title">Sponsorship</h3>
        </div>
    </section>

    <!--Mailform-->
    <section class="section section-lg bg-default">
        <div class="container">
            <div class="row row-30 justify-content-center">
                <section class="section section-xs bg-default sponsors">
                    <div class="container sponsors">
                        <section class="sponspartsection partners">
                            <!--   <div id="lgx-sponsors" class="lgx-sponsors lgx-sponsors-black">-->
                            <!--   <h4 class="heading" style="">Main Sponsor & Brand Partner</h4>-->
                            <!--   <div class="lgx-inner-bg">-->
                            <!--      <div class="lgx-inner">-->
                            <!--         <div class="container">-->
                            <!--            <div class="row">                      -->
                            <!--            <div class="col-md-3 mb-2">-->
                            <!--               <div class="single" style="margin-bottom:15px; margin-bottom: 15px;border: 3px solid #ccc;padding: 20px; text-align: center;">-->
                            <!--                  <a href="https://www.dhanacrops.com/" target="_blank"><img src="images/Dhana4.jpg" alt="Dhana4"></a>-->
                            <!--               </div>-->
                            <!--            </div>-->

                            <!--            </div>-->
                            <!--         </div>-->
                            <!--      </div>-->
                            <!--   </div>-->
                            <!--</div>-->
                            <div id="lgx-sponsors" class="lgx-sponsors lgx-sponsors-black">
                                <h4 class="heading" style="">Platinum Sponsors</h4>
                                <div class="lgx-inner-bg">
                                    <div class="lgx-inner">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://agastyachemicals.in/" target="_blank"><img
                                                                src="images/nov/AGASTYA.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="http://www.agbio-inc.com/" target="_blank"><img
                                                                src="images/nov/Agbio.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.agrilife.in/" target="_blank"><img
                                                                src="images/nov/Agri_life.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://bioprimeagri.com/" target="_blank"><img
                                                                src="images/nov/Bio_prime.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="http://www.brfchennai.com/" target="_blank"><img
                                                                src="images/nov/brf.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.dhanacrops.com/" target="_blank"><img
                                                                src="images/nov/dhana_crop_science.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="http://www.inera.ag/" target="_blank"><img
                                                                src="images/nov/inera.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.iplbiologicals.com/" target="_blank"><img
                                                                src="images/nov/IPL_biologicals_limited.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.knbiosciences.in/" target="_blank"><img
                                                                src="images/nov/KNBIO.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="http://www.momentive.com/" target="_blank"><img
                                                                src="images/nov/momentive.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.novozymes.com/en/solutions/bioag"
                                                            target="_blank"><img src="images/nov/novozymes.png"></a>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.rayconsulting.in/" target="_blank"><img
                                                                src="images/nov/Ray_consulting.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.rovensanext.com/en/" target="_blank"><img
                                                                src="images/nov/Rovensa.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://sribioaesthetics.com/" target="_blank"><img
                                                                src="images/nov/Sribio.png"></a></div>
                                                </div>
                                                <div class="col-md-3 mb-2">
                                                    <div class="single"
                                                        style="margin-bottom:15px; margin-bottom: 15px;"><a
                                                            href="https://www.varshabioscience.com/"
                                                            target="_blank"><img src="images/nov/Varsha.png"></a></div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--<div id="lgx-sponsors" class="lgx-sponsors lgx-sponsors-black">-->
                            <!--   <h4 class="heading" style="">Gold Sponsor</h4>-->
                            <!--   <div class="lgx-inner-bg">-->
                            <!--      <div class="lgx-inner">-->
                            <!--         <div class="container">-->
                            <!--            <div class="row">-->

                            <!--               <div class="col-md-3 mb-2">-->
                            <!--               <div class="single" style="margin-bottom:15px; margin-bottom: 15px;border: 3px solid #ccc;padding: 20px; ">-->
                            <!--                  <a href="https://www.absolute.ag/" target="_blank"><img src="images/absolute.jpg" alt="Absolute"></a>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--            <div class="col-md-3 mb-2">-->
                            <!--               <div class="single" style="margin-bottom:15px; margin-bottom: 15px;border: 3px solid #ccc;padding: 20px; ">-->
                            <!--                  <a href="https://atgcbiotech.in/" target="_blank"><img src="images/atgc.jpg" alt="ATGC"></a>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--            <div class="col-md-3 mb-2">-->
                            <!--               <div class="single" style="margin-bottom:15px; margin-bottom: 15px;border: 3px solid #ccc;padding: 20px; ">-->
                            <!--                  <a href="http://www.pjmargo.com/" target="_blank"><img src="images/pjmargo.jpg" alt="P J Margo"></a>-->
                            <!--               </div>-->
                            <!--            </div>                       -->
                            <!--            </div>-->
                            <!--         </div>-->
                            <!--      </div>-->
                            <!--   </div>-->
                            <!--</div>-->
                            <!--<div id="lgx-sponsors" class="lgx-sponsors lgx-sponsors-black">-->
                            <!--   <h4 class="heading" style="">Silver Sponsor</h4>-->
                            <!--   <div class="lgx-inner-bg">-->
                            <!--      <div class="lgx-inner">-->
                            <!--         <div class="container">-->
                            <!--            <div class="row">-->

                            <!--            <div class="col-md-3 mb-2">-->
                            <!--               <div class="single" style="margin-bottom:15px; margin-bottom: 15px;border: 3px solid #ccc;padding: 20px; ">-->
                            <!--                  <a href="https://www.biofactor.in/" target="_blank"><img src="images/Biofactor.jpg" alt="Biofactor"></a>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--            <div class="col-md-3 mb-2">-->
                            <!--               <div class="single" style="margin-bottom:15px; margin-bottom: 15px;border: 3px solid #ccc;padding: 20px; ">-->
                            <!--                  <a href="http://brfchennai.com/" target="_blank"><img src="images/bioscience_research_foundation.jpg" alt="Bioscience Research Foundation"></a>-->
                            <!--               </div>-->
                            <!--            </div> -->
                            <!--            <div class="col-md-3 mb-2">-->
                            <!--               <div class="single" style="margin-bottom:15px; margin-bottom: 15px;border: 3px solid #ccc;padding: 20px; ">-->
                            <!--                  <a href="https://naturacropcare.com/" target="_blank"><img src="images/natura.jpg" alt="Natura Crop Care"></a>-->
                            <!--               </div>-->
                            <!--            </div>                      -->
                            <!--            </div>-->
                            <!--         </div>-->
                            <!--      </div>-->
                            <!--   </div>-->
                            <!--</div>-->

                            <!--   <div class="col-xs-10 col-sm-9 col-md-12 col-lg-5 col-xl-12 formmb">-->
                            <!--      <h4>Sponsorship</h4>-->
                            <!--         <img style="margin-top:30px; width: 100%;" src="images/sponsership.jpg" />-->
                            <!--   </div>-->
                            <!--   <div class="col-xs-10 col-sm-9 col-md-12 col-lg-7 col-xl-12">               -->
                            <!--      RD Mailform-->
                            <!--      <form autocomplete="off" class="rd-mailform rd-form" data-form-output="form-output-global" data-form-type="contact" method="post" action="">-->
                            <!--         <div class="row row-10 row-narrow-xs">-->
                            <!--            <div class="col-lg-12">-->
                            <!--               <div class="form-wrap">-->
                            <!--                  <label class="form-label" for="contact-name">Your Name <span style="color: red;">*</span></label>-->
                            <!--                  <input class="form-input" id="contact-name" type="text" name="name" data-constraints="@Required">-->
                            <!--                  <div style="color: red;"><?php echo $nameerror; ?></div>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--            <div class="col-lg-6">-->
                            <!--               <div class="form-wrap">-->
                            <!--                  <label class="form-label" for="contact-email">Email Address <span style="color: red;">*</span></label>-->
                            <!--                  <input class="form-input" id="contact-email" type="email" name="email" data-constraints="@Required @Email">-->
                            <!--                  <div style="color: red;"><?php echo $emailerror; ?></div>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--            <div class="col-lg-6">-->
                            <!--               <div class="form-wrap">-->
                            <!--                  <label class="form-label" for="phone">Contact Number <span style="color: red;">*</span></label>-->
                            <!--                  <input class="form-input mobile" id="phone" type="number" name="phone" data-constraints="@Required @phone"  maxlength="10">-->
                            <!--                  <div style="color: red;"><?php echo $phone_err; ?></div>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--            <div class="col-lg-12">-->
                            <!--               <div class="form-wrap">-->
                            <!--                  <label class="form-label" for="contact-message">Write Message</label>-->
                            <!--                  <textarea class="form-input" id="contact-message" name="message" data-constraints="@Required"></textarea>-->
                            <!--                  <div style="color: green;"><?php echo $tymsg; ?></div>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--            <div class="col-lg-12">-->
                            <!--               <div class="g-recaptcha" data-sitekey="6LemIXYcAAAAAEnVLuUY9uBcoikn1ch7kcNNiZbo"></div>-->
                            <!--               <div  style="color: red;"><?php echo $cerr; ?></div>-->
                            <!--            </div>-->
                            <!--            <div class="col-lg-12">-->
                            <!--               <div class="form-button">-->
                            <!--                  <button name="submit" id="contact_sub" class="button button-lg button-primary" type="submit" data-triangle=".button-overlay"><span class="button-overlay"></span><span>Send Message</span></button>-->
                            <!--               </div>-->
                            <!--            </div>-->
                            <!--         </div>-->
                            <!--      </form>-->
                            <!--   </div>-->
                        </section>
                        <section class="sponspartsection partners">
                            <div class="container">
                                <!--<h2>Comming Soon...</h2>-->
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                        <img class="img-fluid shadow p-3 mb-5 bg-white rounded"
                                            src="images/sponsors.png" />
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="sponspartsection partners">
                            <div class="container">
                                <!--<h2>Comming Soon...</h2>-->
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                        <img class="img-fluid shadow p-3 mb-5 bg-white rounded" src="images/bio1.png" />
                                    </div>
                                </div>
                            </div>
                        </section>




                    </div>
            </div>
    </section>
    <section>
        <div class="lgx-page-wrapper lgx-page-wrapper-none">
            <div class="row col-md-12">
                <!--<div class="col-md-4">-->
                <!--    <div class="slide"><a href="https://agastyachemicals.in/"><img src="images/nov/AGASTYA.png"></a></div>-->
                <!--</div>-->
                <!--<div class="col-md-4">-->
                <!--    <div class="slide"><a href="https://agastyachemicals.in/"><img src="images/nov/AGASTYA.png"></a></div>-->
                <!--</div>-->
                <!--<div class="col-md-4">-->
                <!--    <div class="slide"><a href="https://agastyachemicals.in/"><img src="images/nov/AGASTYA.png"></a></div>-->
                <!--</div>-->

            </div>
        </div>
    </section>
</div>
</section>
</div>
<script src="<?php echo $mainlink; ?>js/contact.js"></script>
<?php include('footer.php'); ?>