<?php
include("includes/header.php");
include("../functions/functions.php");
include('../functions/list_grid.php');

?>

<?php
    if(isset($_GET['courseId'])){
        $courseId = $_GET['courseId'];
        $fetch_list_assessment_query = mysqli_query($con, "SELECT * FROM assessment WHERE courseId = $courseId AND isActive =1");
    }
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
        <form id="assessmentForm">
            <?php 
                if ($fetch_list_assessment_query) {
                    $questionNumber = 1; 
                    $questionsAndAnswers = []; // Initialize an array to store questions and correct answers

                    while ($row = mysqli_fetch_assoc($fetch_list_assessment_query)) {
                        $questionsAndAnswers[$questionNumber] = [
                            'question' => $row['questions'],
                            'options' => [
                                'A' => $row['a'],
                                'B' => $row['b'],
                                'C' => $row['c'],
                                'D' => $row['d'],
                            ],
                            'correctAnswer' => $row['correctAnswer'],
                        ];
                ?>

                    <div class="question-container">
                        <p class="question">Q) <?= $questionsAndAnswers[$questionNumber]['question']; ?></p>                        
                        <div class="option">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="optionA<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="a">    
                                <label class="custom-control-label" for="optionA<?= $questionNumber ?>"><?= $questionsAndAnswers[$questionNumber]['options']['A']; ?></label>
                            </div>
                        </div>
                        <div class="option">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="optionB<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="b">    
                                <label class="custom-control-label" for="optionB<?= $questionNumber ?>"><?= $questionsAndAnswers[$questionNumber]['options']['B']; ?></label>
                            </div>
                        </div>
                        <div class="option">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="optionC<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="c">    
                                <label class="custom-control-label" for="optionC<?= $questionNumber ?>"><?= $questionsAndAnswers[$questionNumber]['options']['C']; ?></label>
                            </div>
                        </div>
                        <div class="option">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="optionD<?= $questionNumber ?>" name="option<?= $questionNumber ?>" class="custom-control-input" value="d">    
                                <label class="custom-control-label" for="optionD<?= $questionNumber ?>"><?= $questionsAndAnswers[$questionNumber]['options']['D']; ?></label>
                            </div>
                        </div>
                    </div>
            <?php
                    $questionNumber++;
                }
            }
            ?>
            <button type="submit" class="btn btn-warning">Submit</button>
            <button class="btn btn-danger">Cancel</button>
        </form>
        <div id="correctAnswersContainer" style="display: none;">
            <h3>Correct Answers:</h3>
            <ul id="correctAnswersList"></ul>
        </div>
    </div>      
</section>
<script>
    $(document).ready(function () {
    // Declare questionsAndAnswers in a global scope
    var questionsAndAnswers = <?php echo json_encode($questionsAndAnswers); ?>;

    $('#assessmentForm').submit(function (event) {
        event.preventDefault();

        // Collect selected answers
        var selectedAnswers = {};   

        $('input[type="radio"]:checked').each(function () {
            var questionNumber = $(this).attr('name').replace('option', '');
            var answer = $(this).val();
            console.log(answer);

            selectedAnswers[questionNumber] = answer;
        });

        // Compare selected answers with correct answers and calculate score
        var score = 0;

        $.each(selectedAnswers, function (questionNumber, selectedAnswer) {
            var correctAnswer = questionsAndAnswers[questionNumber].correctAnswer;

            if (correctAnswer === selectedAnswer) {
                score++;
            }
        });

        // Display or handle the score as needed
        alert('Your score: ' + score);
         displayCorrectAnswers();
    });
    function displayCorrectAnswers() {
        var correctAnswersList = $('#correctAnswersList');

        // Clear previous correct answers
        correctAnswersList.empty();

        $.each(questionsAndAnswers, function (questionNumber, questionData) {
            var correctAnswer = questionData.correctAnswer;

            // Create list item and append to the correct answers list
            var listItem = $('<li>').text('Q' + questionNumber + ': ' + correctAnswer);
            correctAnswersList.append(listItem);
        });

        // Show the correct answers container
        $('#correctAnswersContainer').show();
    }
});




</script>

<?php
include("includes/footer.php");
?>
