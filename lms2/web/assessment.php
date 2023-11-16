<?php
include("includes/header.php");
include("../functions/functions.php");
include('../functions/list_grid.php');

?>

<style>
        .question-container {
            margin-bottom: 20px;
        }

        .question {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .custom-control-label {
            cursor: pointer;
        }

        .option {
            margin-bottom: 10px;
        }
    </style>

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
                    <h1>Assessment</h1>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="list-inline-item">/</li>
                        <li class="list-inline-item">
                            Assessment
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="blog section-padding">

        
    <div class="container mt-4">
    <?php 
    if($fetch_list_assessment_query){
        $questionNumber = 1; // Assuming you have a way to identify each question uniquely
        while($row = mysqli_fetch_assoc($fetch_list_assessment_query)){
            $questions = $row['questions'];
            $optionA = $row['a'];
            $optionB = $row['b'];
            $optionC = $row['c'];
            $optionD = $row['d'];
    ?>
            <div class="question-container">
                <p class="question">Q) <?= $questions ?></p>                        
                <div class="option">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="optionA<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="A">    
                        <label class="custom-control-label" for="optionA<?= $questionNumber ?>"><?= $optionA ?></label>
                    </div>
                </div>
                <div class="option">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="optionB<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="B">    
                        <label class="custom-control-label" for="optionB<?= $questionNumber ?>"><?= $optionB ?></label>
                    </div>
                </div>
                <div class="option">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="optionC<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="C">    
                        <label class="custom-control-label" for="optionC<?= $questionNumber ?>"><?= $optionC ?></label>
                    </div>
                </div>
                <div class="option">
                    <div class="custom-control custom-radio">
                        <input type="radio" id="optionD<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="D">    
                        <label class="custom-control-label" for="optionD<?= $questionNumber ?>"><?= $optionD ?></label>
                    </div>
                </div>
            </div>
    <?php
            $questionNumber++;
        }
    }
    ?>
</div>
           

</section>

<?php
include("includes/footer.php");
?>
