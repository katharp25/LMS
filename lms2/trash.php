<!-- settings sidebar skins -->

<div class="theme-setting-wrapper">
    <div id="settings-trigger"><i class="ti-settings"></i></div>
    <div id="theme-settings" class="settings-panel">
        <i class="settings-close ti-close"></i>
        <p class="settings-heading">SIDEBAR SKINS</p>
        <div class="sidebar-bg-options selected" id="sidebar-light-theme">
            <div class="img-ss rounded-circle bg-light border me-3"></div>Light
        </div>
        <div class="sidebar-bg-options" id="sidebar-dark-theme">
            <div class="img-ss rounded-circle bg-dark border me-3"></div>Dark
        </div>
        <p class="settings-heading mt-2">HEADER SKINS</p>
        <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
        </div>
    </div>
</div>

<!-- settings sidebar skins -->

<!-- another right sidebar -->

<div id="right-sidebar" class="settings-panel">
    <i class="settings-close ti-close"></i>
    <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="todo-tab" data-bs-toggle="tab" href="#todo-section" role="tab"
                aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="chats-tab" data-bs-toggle="tab" href="#chats-section" role="tab"
                aria-controls="chats-section">CHATS</a>
        </li>
    </ul>
    <div class="tab-content" id="setting-content">
        <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel"
            aria-labelledby="todo-section">
            <div class="add-items d-flex px-3 mb-0">
                <form class="form w-100">
                    <div class="form-group d-flex">
                        <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                        <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                    </div>
                </form>
            </div>
            <div class="list-wrapper px-3">
                <ul class="d-flex flex-column-reverse todo-list">
                    <li>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="checkbox" type="checkbox">
                                Team review meeting at 3.00 PM
                            </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="checkbox" type="checkbox">
                                Prepare for presentation
                            </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="checkbox" type="checkbox">
                                Resolve all the low priority tickets due today
                            </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li class="completed">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="checkbox" type="checkbox" checked>
                                Schedule meeting for next week
                            </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li class="completed">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="checkbox" type="checkbox" checked>
                                Project review
                            </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                </ul>
            </div>
            <h4 class="px-3 text-muted mt-5 fw-light mb-0">Events</h4>
            <div class="events pt-4 px-3">
                <div class="wrapper d-flex mb-2">
                    <i class="ti-control-record text-primary me-2"></i>
                    <span>Feb 11 2018</span>
                </div>
                <p class="mb-0 font-weight-thin text-gray">Creating component page build a js</p>
                <p class="text-gray mb-0">The total number of sessions</p>
            </div>
            <div class="events pt-4 px-3">
                <div class="wrapper d-flex mb-2">
                    <i class="ti-control-record text-primary me-2"></i>
                    <span>Feb 7 2018</span>
                </div>
                <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
                <p class="text-gray mb-0 ">Call Sarah Graves</p>
            </div>
        </div>
        <!-- To do section tab ends -->
        <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
            <div class="d-flex align-items-center justify-content-between border-bottom">
                <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
                <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 fw-normal">See
                    All</small>
            </div>
            <ul class="chat-list">
                <li class="list active">
                    <div class="profile"><img src="images/faces/face1.jpg" alt="image"><span class="online"></span>
                    </div>
                    <div class="info">
                        <p>Thomas Douglas</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">19 min</small>
                </li>
                <li class="list">
                    <div class="profile"><img src="images/faces/face2.jpg" alt="image"><span class="offline"></span>
                    </div>
                    <div class="info">
                        <div class="wrapper d-flex">
                            <p>Catherine</p>
                        </div>
                        <p>Away</p>
                    </div>
                    <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                    <small class="text-muted my-auto">23 min</small>
                </li>
                <li class="list">
                    <div class="profile"><img src="images/faces/face3.jpg" alt="image"><span class="online"></span>
                    </div>
                    <div class="info">
                        <p>Daniel Russell</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">14 min</small>
                </li>
                <li class="list">
                    <div class="profile"><img src="images/faces/face4.jpg" alt="image"><span class="offline"></span>
                    </div>
                    <div class="info">
                        <p>James Richardson</p>
                        <p>Away</p>
                    </div>
                    <small class="text-muted my-auto">2 min</small>
                </li>
                <li class="list">
                    <div class="profile"><img src="images/faces/face5.jpg" alt="image"><span class="online"></span>
                    </div>
                    <div class="info">
                        <p>Madeline Kennedy</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">5 min</small>
                </li>
                <li class="list">
                    <div class="profile"><img src="images/faces/face6.jpg" alt="image"><span class="online"></span>
                    </div>
                    <div class="info">
                        <p>Sarah Graves</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">47 min</small>
                </li>
            </ul>
        </div>
        <!-- chat tab ends -->
    </div>
</div>

<!-- another right sidebar -->
<?php
include('includes/header.php');
include('includes/sidebar.php');
?>

<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card">

                    <div class="card-body">
                        <!-- <h4 class="card-title">Default form</h4> -->
                        <!-- <p class="card-description">
                    Basic form layout
                  </p> -->
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Enter Name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" name="email" placeholder="Enter Email Address">
                        </div>
                        <div class="form-group">
                            <label for="phoneNumber">Phone Number</label>
                            <input type="text" class="form-control" name="phoneNumber" placeholder="Enter Phone Number">
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <textarea type="text" class="form-control" name="address"
                                placeholder="Enter Address"> </textarea>
                        </div>
                        <div class="form-group">
                            <label for="userType">User Type</label>
                            <select class="form-control" name="userType">
                                <option></option>
                            </select>
                            <!-- <textarea type="text" class="form-control" name="userType" placeholder="Enter User Type"> -->
                        </div>
                        <div class="form-group">
                            <label for="userId">User Id</label>
                            <input type="text" class="form-control" name="UserId" placeholder="Enter Address">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Password">
                        </div>
                        <!-- <div class="form-group">
                      <label for="exampleInputConfirmPassword1">Confirm Password</label>
                      <input type="password" class="form-control" id="exampleInputConfirmPassword1" placeholder="Password">
                    </div>
                    <div class="form-check form-check-flat form-check-primary">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input">
                        Remember me
                      </label>
                    </div> -->
                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Horizontal Form</h4>
                        <p class="card-description">
                            Horizontal form layout
                        </p>
                        <form class="forms-sample">
                            <div class="form-group row">
                                <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Email</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="exampleInputUsername2" placeholder="Username">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="exampleInputEmail2" class="col-sm-3 col-form-label">Email</label>
                                <div class="col-sm-9">
                                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="exampleInputMobile" class="col-sm-3 col-form-label">Mobile</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="exampleInputMobile" placeholder="Mobile number">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="exampleInputPassword2" class="col-sm-3 col-form-label">Password</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="exampleInputConfirmPassword2" class="col-sm-3 col-form-label">Re Password</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="exampleInputConfirmPassword2" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-check form-check-flat form-check-primary">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                    Remember me
                                </label>
                            </div>
                            <button type="submit" class="btn btn-primary me-2">Submit</button>
                            <button class="btn btn-light">Cancel</button>
                        </form>
                    </div>
                </div>
            </div> -->
        </div>
    </div>

    <!-- partial -->
</div>

// console.log(rowid);
// $.ajax({
// url: 'functions/datapost.php',
// method: 'POST',
// data: {
// topic_row_id: rowid
// },
// success: function(data) {
// try {
// // Attempt to parse the JSON response
// var responseData = JSON.parse(data);

// // Check if the expected properties exist in the response
// if (responseData && responseData.topic_name && responseData
// .topic_cron) {
// // Populate the input elements with data received from the server
// $('#topic_name').val(responseData.topic_name);
// $('#topic_cron').val(responseData.topic_cron);
// // You can process the data returned from the server here.
// } else {
// console.error("Incomplete or unexpected data in the response.");
// }
// } catch (error) {
// console.error("Error parsing JSON data: " + error);
// }
// },
// error: function(jqXHR, textStatus, errorThrown) {
// console.error("AJAX Error: " + errorThrown);
// // Handle the error appropriately, e.g., display an error message.
// }
// });
<p>
    <strong
        style=" font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255)">Lorem
        Ipsum</strong><span
        style=" font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255)"><span>&nbsp;</span>is
        simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
        text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
        specimen book.</span>
</p>




<p><strong
        style=" font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255)">Lorem
        Ipsum</strong><span
        style=" font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255)"><span>&nbsp;</span>is
        simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
        text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
        specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining
        essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem
        Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of
        Lorem Ipsum</span></p>



<div>
    <ul style="list-style: square;">
        <li>Clean up face imperfections, improve and repair photos
            <br />
        </li>
        <li>Remove people or objects from photos<br />
        </li>
        <li>Master selections, layers, and working with the layers panel<br />
        </li>
        <li>Use creative effects to design stunning text styles<br />
        </li>
        <li>working with the layers panel<br />
        </li>
        <li>Cut away a person from their background<br />
        </li>
    </ul>
</div>



<div class="col-md-12 grid-margin stretch-card ">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Add Courses Details</h4>
            <form class="forms-sample row" action="functions/functions" method="POST" enctype="multipart/form-data">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="topic"> Topic Name</label>
                        <!-- <input type="text" class="form-control" name="name" placeholder="Enter Name"> -->
                        <select class="form-control" class="topic" name="topic" id="topic">
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
                        <textarea type="text" class="form-control" name="Summary" placeholder="Enter summary" rows="4"
                            cols="50"> </textarea>
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
                        const words = ["apple", "banana", "cherry", "date", "grape", "kiwi", "mango", "orange",
                            "pear", "quince", "raspberry", "strawberry", "watermelon"
                        ];

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
                        <textarea class="rte" name="desc">

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


<?php

include('includes/footer.php');

?>

Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cumque deserunt ullam quo hic odio voluptate doloremque beatae voluptatibus possimus officiis adipisci nisi vel magni, in incidunt quidem quam accusantium repellat.