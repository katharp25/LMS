<?php
include('includes/header.php');
include('includes/sidebar.php');
include('functions/list_grid.php');
// include('functions/get_subtopics.php');
?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        // Bind a change event to the topic select
        $('#topic').change(function() {
            var topicId = $(this).val();
            if (topicId) {
                // Make an AJAX request to fetch subtopics for the selected topic
                $.ajax({
                    url: 'functions/get_subtopics.php', // Replace with the actual server-side script
                    data: {
                        topicId: topicId
                    },
                    method: 'GET',
                    success: function(data) {
                        // Populate the subtopic select with the retrieved data
                        $('#subtopic').html(data);
                    }
                });
            } else {
                // Clear the subtopic select if no topic is selected
                $('#subtopic').html('<option>select subtopic name</option>');
            }
        });
    });
</script>
<style>
    /* Customize the modal size */
    .modal-dialog {
        max-width: 90%;
        /* Adjust this value to control the width */
        height: 80vh;
        /* Adjust this value to control the height */
    }

    #suggestions {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        max-height: 100px;
        overflow-y: auto;
    }
</style>

<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin stretch-card ">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Add Courses Details</h4>
                    <form class="forms-sample row" action="functions/functions" method="POST" enctype="multipart/form-data">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="topic"> Topic Name</label>
                                <!-- <input type="text" class="form-control" name="name" placeholder="Enter Name"> -->
                                <select class="form-control" name="topic" id="topic">
                                    <option value=""> Select Topic Name</option>
                                    <?php
                                    if ($fetch_list_topic_query) {
                                        // $i = 1;

                                        while ($row = mysqli_fetch_assoc($fetch_list_topic_query)) {

                                            echo $topic_id;
                                    ?>

                                            <option value=<?= $row['Id']; ?>> <?= $row['topicName']; ?></option>
                                    <?php
                                        }
                                    } else {
                                        echo "Query failed!";
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="subtopic">Sub Topic Name</label>
                                <!-- <input type="text" class="form-control" name="name" placeholder="Enter Name"> -->
                                <select class="form-control" name="subtopic" id="subtopic">
                                    <option> select subtopic name</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="courseName">Course Name</label>
                                <input type="text" class="form-control" name="courseName" placeholder="Enter Course Name">
                            </div>
                            <div class="form-group">
                                <label for="summary">Summary</label>
                                <textarea type="text" class="form-control" name="Summary" placeholder="Enter summary" rows="4" cols="50"> </textarea>
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="number" class="form-control" name="price" placeholder="Enter Price">
                            </div>
                            <div class="form-group">
                                <label for="image">Image</label>
                                <input type="file" class="form-control-file" name="image" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label for="uploadfile">Upload File</label>
                                <input type="file" class="form-control-file" name="uploadfile">
                            </div>
                            <div class="form-group">
                                <label for="image">Upload Video</label>
                                <input type="file" class="form-control-file" name="video" accept="video/*">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="from-group">
                                <div>
                                    <label for="numberDropdown" class="mt-4">What You Will Learn?</label>
                                </div>
                                <div id="container" class="mt-3">
                                    <textarea id="inputTextLearn" rows="4" cols="50" placeholder="Enter a value"></textarea>
                                    <button type="button" class="btn btn-primary" onclick="addLearnValue()">Add</button>
                                    <div id="display" name="learn"></div>
                                    <input id="learnMore" type="hidden" name="learnMore">
                                </div>

                                <script>
                                    const arr = [];
                                    function addLearnValue() {
                                        
                                        const inputText = document.getElementById("inputTextLearn").value;
                                        if (inputText.trim() !== "") {
                                            
                                            const display = document.getElementById("display");
                                            const p = document.createElement("p");
                                            arr.push(inputText);

                                            p.textContent = inputText;
                                            console.log(arr)
                                            display.appendChild(p);
                                            $('#learnMore').val(arr);
                                            document.getElementById("inputTextLearn").value = "";
                                        }
                                    }
                                </script>
                            </div>
                            <div class="from-group">
                                <div class="mt-4">
                                    <label for="numberRequirements">Requirements</label>
                                </div>
                                <div id="container" class="mt-3">
                                    <textarea id="inputText" rows="4" cols="50" placeholder="Enter a value"></textarea>
                                    <button type="button" class="btn btn-primary" onclick="addText()">Add</button>
                                    <div id="displaybelow" name="requirements"></div>
                                    <input id="requirementsMore" type="hidden" name="requirementsMore">
                                </div>

                                <script>
                                    const arrRequirements = [];
                                    function addText() {
                                        const inputText = document.getElementById("inputText").value;
                                        if (inputText.trim() !== "") {
                                            const display = document.getElementById("display");
                                            const p = document.createElement("p");
                                            arrRequirements.push(inputText);

                                            p.textContent = inputText;
                                            console.log(arrRequirements)
                                            displaybelow.appendChild(p);
                                            $('#requirementsMore').val(arr);
                                            document.getElementById("inputText").value = "";
                                        }
                                    }
                                </script>
                            </div>
                            <div class="form-group">
                                <div>
                                    <label for="numberRequirements">Add Tag</label>
                                </div>
                                <div class="row">
                                    <div class="col-8">
                                        <input class="form-control" type="text" id="searchInput" oninput="showSuggestions()">
                                        <div id="suggestions"></div>
                                    </div>
                                    <div class="col-4">
                                        <button type="button" class="btn btn-primary" onclick="addWord()">Add</button>
                                    </div>
                                </div>
                                <textarea id="addedWords" style="margin-top: 15px;" name="tag" rows="5" cols="40"></textarea>

                                <script>
                                    const words = ["apple", "banana", "cherry", "date", "grape", "kiwi", "mango", "orange", "pear", "quince", "raspberry", "strawberry", "watermelon"];

                                    function showSuggestions() {
                                        const input = document.getElementById("searchInput").value;
                                        const suggestions = document.getElementById("suggestions");

                                        suggestions.innerHTML = "";
                                        for (let i = 0; i < words.length; i++) {
                                            if (words[i].startsWith(input)) {
                                                const suggestionItem = document.createElement("div");
                                                suggestionItem.textContent = words[i];
                                                suggestionItem.addEventListener("click", () => {
                                                    document.getElementById("searchInput").value = words[i];
                                                    suggestions.style.display = "none";
                                                });
                                                suggestions.appendChild(suggestionItem);
                                            }
                                        }

                                        if (suggestions.children.length > 0) {
                                            suggestions.style.display = "block";
                                        } else {
                                            suggestions.style.display = "none";
                                        }
                                    }

                                    function addWord() {
                                        const addedWords = document.getElementById("addedWords");
                                        const wordToAdd = document.getElementById("searchInput").value;
                                        if (wordToAdd) {
                                            addedWords.value += wordToAdd + "\n";
                                            document.getElementById("searchInput").value = "";
                                        }
                                    }
                                </script>
                            </div>
                            <div class="form-group">
                                <label for="banner_desc">Description</label>
                                <textarea class="richtext" name="desc">
                            Welcome to Saburi LMS
                                    </textarea>
                            </div>

                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary me-2" name="course_manage">Submit</button>
                            <button class="btn btn-light">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Courses Details</h4>
                    <div class="table-responsive">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>S.no</th>
                                    <th>Topic Name</th>
                                    <th>Sub Topic Name</th>
                                    <th>Course Name</th>
                                    <th>Price</th>
                                    <th>Description</th>
                                    <th>learn</th>
                                    <th>requirements</th>
                                    <th>tag</th>
                                    <th>Image</th>
                                    <th>Upload File</th>
                                    <th>Video</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if ($fetch_list_join_topics_subtopic_course_query) {
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($fetch_list_join_topics_subtopic_course_query)) {
                                        $topic_name = $row['topicName'];
                                        $subtopic_name = $row['subTopicName'];
                                        $course_name = $row['courseName'];
                                        $price = $row['courseCost'];
                                        $desc = $row['courseDesc'];
                                        $learn = $row['learn'];
                                        $requirements = $row['requirements'];
                                        $tag = $row['tag'];
                                        $img = $row['bannerImage'];
                                        $file = $row['uploadfile'];
                                        $video = $row['video'];
                                        // $id = $row['id'];
                                ?>
                                        <tr>
                                            <td><?= $i; ?></td>
                                            <td><?= $topic_name; ?></td>
                                            <td><?= $subtopic_name; ?></td>
                                            <td><?= $course_name; ?></td>
                                            <td><?= $price; ?></td>
                                            <td><?= $desc; ?></td>
                                            <td><?= $learn; ?></td>
                                            <td><?= $requirements; ?></td>
                                            <td><?= $tag; ?></td>
                                            <td><?= $img; ?></td>
                                            <td><?= $file; ?></td>
                                            <td><?= $video; ?></td>
                                            <td>
                                                <button type="submit" class="btn btn-primary me-2 p-2 edit-button" data-bs-toggle="modal" data-bs-target="#editmodal">Edit</button>
                                                <button class="btn btn-danger p-2">Delete</button>
                                            </td>
                                        </tr>
                                <?php
                                        $i++;
                                    }
                                } else {
                                    echo "Query failed!";
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>

                    <!-- Edit Modal -->
                    <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <form class="forms-sample">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Edit Courses Details</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12 grid-margin stretch-card ">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <!-- <h4 class="card-title">Add Courses Details</h4> -->
                                                        <form class="forms-sample row" action="functions/functions" method="POST" enctype="multipart/form-data">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="topic"> Topic Name</label>
                                                                        <input type="hidden" class="form-control" name="name" placeholder="Enter Name" id="editrow">
                                                                        <select class="form-control" name="topic" id="topic">
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="subtopic">Sub Topic Name</label>
                                                                        <!-- <input type="text" class="form-control" name="name" placeholder="Enter Name"> -->
                                                                        <select class="form-control" name="subtopic" id="subtopic">
                                                                            <option> select subtopic name</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="courseName">Course Name</label>
                                                                        <input type="text" class="form-control" name="courseName" placeholder="Enter Course Name">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="price">Price</label>
                                                                        <input type="number" class="form-control" name="price" placeholder="Enter Price">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="image">Image</label>
                                                                        <input type="file" class="form-control-file" name="image" accept="image/*">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="uploadfile">Upload File</label>
                                                                        <input type="file" class="form-control-file" name="uploadfile">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="image">Upload Video</label>
                                                                        <input type="file" class="form-control-file" name="video" accept="video/*">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="banner_desc">Description</label>
                                                                        <!-- <textarea class="richtext" name="desc"> -->
                                                                        <textarea name="desc">
                                                                        Welcome to Saburi LMS
                                                                     </textarea>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary update_sb_tpc" name="update_sb_tpc">Update
                                            Changes</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Edit Modal end -->
                </div>
            </div>
        </div>
    </div>
</div>





<?php

include('includes/footer.php');

?>