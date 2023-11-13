<?php
include("includes/header.php");
// include('config.php');

include('../functions/companyReg.php');

?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


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
            <h1>Register</h1>
            <ul class="list-inline mb-0">
              <li class="list-inline-item">
                <a href="#">Home</a>
              </li>
              <li class="list-inline-item">/</li>
              <li class="list-inline-item">
                  Register
              </li>
            </ul>
          </div>
      </div>
    </div>
  </div>
</section>



<main class="site-main page-wrapper woocommerce single single-product">
    <section class="space-3">
        <div class="container">
        <form method="post" class="woocommerce-form woocommerce-form-register register" action="../functions/companyReg.php">
        <h2 class="font-weight-bold mb-4">Register</h2>
            <div class="row">            
                <div class="col-md-6">               
                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Company Name&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="company_name" id="company_name" autocomplete="user-name" value="">
                        </p>
                        
                        

                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Mobile No&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="phoneNumber" id="phoneNumber" autocomplete="password" value="">
                        </p>

                       

                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Address&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="address" id="address" autocomplete="password" value="">
                        </p>

                        
                       
                         <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Select State&nbsp;<span class="required">*</span></label>
                            <select class="form-select" name="state" class='stateList' id="stateList">                               
                                <option value="-1">Choose States...</option>
                                
                            </select>
                        </p>
                   

                    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>District&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="dist" id="dist" autocomplete="email" value="">
                        </p>

                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Id Details&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="id_details" id="id_details" autocomplete="password" value="">
                        </p>

                        </div>
                <div class="col-md-6">
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Contact Name&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="contact_name" id="contact_name" autocomplete="password" value="">
                        </p>

                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Company Email&nbsp;<span class="required">*</span></label>
                            <input type="email" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="email" id="" autocomplete="password" value="">
                        </p>

                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>GST&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="address" id="address" autocomplete="password" value="">
                        </p>
                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Select Country&nbsp;<span class="required">*</span></label>
                            <select class="form-select" name="country" class='countryList' id="countryList">
                                <option>Choose Country..</option>
                                <!-- <option> -->
                                <?php
                                $fetchCountries = mysqli_query($con, "SELECT * FROM awt_countries");
                                    if($fetchCountries){
                                        while($row = mysqli_fetch_assoc($fetchCountries))
                                        {
                                            ?>
                                            <option  value="<?= $row['id'] ?>">
                                            <?= $row['name'] ?>
                                            </option>
                                            <?php
                                        }
                                    }
                                ?>
                                <!-- </option> -->
                                
                                
                            </select>
                        </p>

               
                       
                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>PinCode&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="pinCode" id="" autocomplete="password" value="">
                        </p>

                        

                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label>Select Your ID Proof&nbsp;<span class="required">*</span></label>
                            <select class="form-select" name="idProof">
                                <option>Aadhar Card</option>
                                <option>Passport</option>
                            </select>
                        </p>
                        
                        
                        <p class="woocommerce-FormRow form-row">
                            <input type="hidden" id="woocommerce-register-nonce" name="woocommerce-register-nonce" value="b1c661ab82"><input type="hidden" name="_wp_http_referer" value="/my-account/">
                            <button type="submit" class="woocommerce-Button button" name="registerCompany" value="Register">Register</button>
                        </p>
                </div>    
                </form>
            </div>
        </div>
    </section>
    <!--shop category end-->
</main>


<script>
    $(document).ready(function() {
        $('#countryList').on('change', function () {
            var selectedCountryId = $(this).val();
            console.log('Selected Country ID: ' + selectedCountryId);
            $.ajax({
                method:'get',
                url:'../functions/companyReg.php',
                data: {selectedCountryId : selectedCountryId},
                success: function(datas){
                    var states = JSON.parse(datas);
                    $('#stateList').empty();

                // Append new options based on the received states
                for (var i = 0; i < states.length; i++) {
                    $('#stateList').append($('<option>', {
                        value: states[i].id, // Assuming there is an 'id' field in your states
                        text: states[i].name // Assuming there is a 'state_name' field in your states
                    }));
                }
                }
            })
        });
    });
</script>

<?php
include("includes/footer.php");
?>