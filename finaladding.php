<?php
session_start();
$mail = $_SESSION['user'];
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);
include_once 'connection.php';
if (isset($_SESSION['user'])) {
    // echo "Welcome " . $_SESSION['user'];
    ?>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="style.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <title>Add Post</title>
        </head>

        <body>
            <!-- navbar -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <img src="https://i.pinimg.com/originals/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg" alt=""
                        style="height: 50px;">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link " href="dashboard2.php">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="finaladding.php">Create
                                    Post</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.php">Logout</a>
                            </li>
                        </ul>
                        <span class="navbar-text">
                            <?php echo "Welcome " . $_SESSION['user']; ?>
                       
                        </span>
                    </div>
                </div>
            </nav>

            <!-- form -->
            <form action="finaladding.php" method="post" enctype="multipart/form-data" >

                <div class="container mt-5 ">
                    <div class="mb-3 row">
                        <label class="col-sm-2 ">Title</label>
                        <div class="col-sm-10">
                          <input type="text"  class="form-control" name="title" id="inputEmail" required >
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="inputPassword" class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-10">
                          <input type="textarea" class="form-control" name="description" id="inputDescription"  required>
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="inputFile" class="col-sm-2 form-label">Upload File</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="file" id="formFile" name="upload[]"   multiple required >
                        </div>                
                      </div>

                      <div class="col-12 ">
                        <button type="submit" class="btn btn-primary">SUBMIT</button>
                      </div>

              
                </div>
        
            </form>

            <?php
            // command to show all errors
            
        
            $target_path = "image/";

            $title = $_POST['title'];
            $description = $_POST['description'];
            // echo $title . $description;
            // echo "im in php code for file upload";
            // echo "<br>";
            // if (isset($_FILES['file'])) {
            //     echo count($_FILES['file']);
            //     // for ($i = 0; $i < count($_FILES['file']['name']); $i++) {
            //         $target_path = $target_path . basename($_FILES['file']['name'.[$i].'']);
            //         echo "Im inside first if for printing file info";
            //         echo "<pre> ";
            //         print_r($_FILES);
            //         echo " </pre>";
            //         if (move_uploaded_file($_FILES['file']['tmp_name'.[$i].''], $target_path)) {
            //             echo "File uploaded successfully!";
            //             echo "<br>";
            //             echo $target_path;
            //         } else {
            //             echo "Sorry, file not uploaded, please try again!";
        
            //         }
            //     // }
        

            // } else {echo
            //     echo "file is not set";
            // }
        
            
            // echo $_SESSION['user'];
            $get_id = "Select id from registeration where mail = '$mail'";
            $finalid = mysqli_query($conn, $get_id);
            if ($finalid->num_rows > 0) {
                while ($row = $finalid->fetch_assoc()) {
                    // echo 'I am about to get userid';
                    $userid = $row['id'];
                    // echo $userid = $row['id'];

                    // echo "<br>";
                    // $ins_post = "insert into post (title,description,user_id) values ('$title','$description', $userid)";
                    // echo $ins_post;
                    // $finalpostdone = mysqli_query($conn,$ins_post);
        
               
            if($title != "" && $description != "" && $userid != ""){
                $ins_post = "insert into post (title,description,user_id) values ('$title','$description', $userid)";
                echo $ins_post;
                $finalpostdone = mysqli_query($conn, $ins_post);
                echo "added except images";
                $last_id = mysqli_insert_id($conn);
                echo "<br>";
                echo $last_id;
            }
            
            // Count the number of uploaded files in array
            $total_count = count($_FILES['upload']['name']);
            // echo $total_count;
            // Loop through every file
            for ($i = 0; $i < $total_count; $i++) {
               
                //The temp file path is obtained
                $tmpFilePath = $_FILES['upload']['tmp_name'][$i];
                //A file path needs to be present
                if ($tmpFilePath != "") {
                   
                    //Setup our new file path
                    // $newFilePath = "image/" . $_FILES['upload']['name'][$i];
                    $extension = pathinfo($tmpFilePath, PATHINFO_EXTENSION);
                    $newFilePath = "image/".  date("Y-m-d h:i:s a"). $i. $extension;
                    //File is uploaded to temp dir
                    if (move_uploaded_file($tmpFilePath, $newFilePath)) {
                       
                        //Other code goes here
                        // echo $newFilePath;
                        // echo "<br>";
                        // $get_id = "Select id from registeration where mail = '$mail'";
                        // echo $get_id;
                        // echo "<br>";
                        // $finalid = mysqli_query($conn , $get_id);
                        // echo "Id get successfully";
                        // echo "<br>";
                        if ($finalid->num_rows > 0) {
                            
                            // while ($row = $finalid->fetch_assoc()) {
                                echo "I am inside i";
                                echo "<br>";
                                $userid = $row['id'];
                                echo $userid;
                                // echo $userid =  $row['id'];
                                // echo "<br>";
                                // $ins_post = "insert into post (title,description,user_id) values ('$title','$description', $userid)";
                                // echo $ins_post;
                                // $finalpostdone = mysqli_query($conn,$ins_post);
                                $ins_images = "insert into images (post_id,userid,image) values ($last_id,$userid,'$newFilePath')";
                                echo $ins_images;
                                $inserted_image = mysqli_query($conn,$ins_images);
                                echo "<br>";
                                echo 'done';
                            // }
                        }
                    }
                }
            }
        }
    }
            echo $total_count . 'files uploaded succesfully';
            header('location:dashboard2.php');
        
            ?>  
            <?php
} else {
    echo "Your session is currently not active.<a href='login.php'>Login Here!</a> ";
}
?>

</body>

</html>