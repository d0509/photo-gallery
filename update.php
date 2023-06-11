<?php
session_start();
$mail = $_SESSION['user'];
// echo "Welcome  " . $mail;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
          <!-- font awesome cdn -->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
          <!-- jquery cdn -->
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <title>Update Page</title>
</head>
<body>
    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                  <div class="container-fluid">
          
                      <img src="https://i.pinimg.com/originals/e7/5d/db/e75ddbda351d44e24b6b8099fa200aad.jpg" alt="" style="height: 50px;">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="dashboard2.php">Home</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="finaladding.php">Create Post</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="logout.php">Logout</a>
                        </li>
                      </ul>
                      <span class="navbar-text">
                            <?php echo "Welcome " . $_SESSION['user']; ?>
                        </span>
                    </div>
                  </div>
                </nav>

               
<?php
// this is post id
$id = $_GET['q'];
// echo $id;
// echo "<br>";
$sel_post = "select * from post where id = $id";
$sel_images = "select image from images where post_id = $id";
// echo $sel_images;
// echo $sel_post;
// echo "<br>";
include_once 'connection.php';
$res_post = mysqli_query($conn, $sel_post);
if ($res_post->num_rows > 0) {
  while ($row = $res_post->fetch_assoc()) {
    // echo "I am inside loop to show data";
    echo "<br>";
    $title = $row['title'];
    $desc = $row['description'];


    ?>
                                            <div class='container'>
                                            <form method="post" action="update.php?q=<?php echo $_GET['q']; ?>" enctype="multimedia/form-data">
                                            Title: <input type="text" name="title" id="title" value="<?php echo $title; ?>">
                                            <br><br>
                                            Description : <input type="text" name="desc" id="desc" value="<?php echo $desc; ?>" />
                                            <br><br>
                                           
                                            <input type="button" name="submit_del" id="submit_del" value="Delete" onclick="return confirm('Are you sure you want to delete?')" class="btn btn-danger" />
                                   
                                  <?php
                                  $sel_images = "select * from images where post_id = $id and is_deleted = 0 ";
                                  // echo $sel_images;
                                  $selected_images = mysqli_query($conn, $sel_images);
                                  echo "<br>";
                                  
                                  if ($selected_images->num_rows > 0) {
                                    
                                    while ($image = $selected_images->fetch_assoc()) {                                      
                                      ?>
                                  
                                       <div class="card mb-3 d-flex" id="<?php $image['id']; ?>" name="id[]" style="max-width: 540px;">
                                        <div class="row g-0">
                                          <div class="col-md-4">
                                            <img src="<?php echo $image['image'] ?>" class="img-fluid rounded-start" alt="...">
                                          </div>
                                          <div class="col-md-8">
                                            <div class="card-body" id="<?php echo $image['id']; ?>">
                                              <p class="card-text"><small class="text-muted">Last updated <?php $originalDate = $row['updated_at'];$newDate = date("d-m-Y h:i:s a", strtotime($originalDate));echo $newDate; ?></small></p>
                                              <input type="hidden" name="<?php echo $image['id'] ?>"  />
                                              <input class="form-check-input" type="checkbox" value="" id="<?php echo $image['id']; ?>" onclick="deleteAll(<?php echo $image['id'] ?>)">
                                              <a href="delete.php?postid= <?php echo $image['id'] ?>" class="btn btn-danger">Delete</a>  
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <?php
                                    }
                                  }
                                  ?>
                                  </div>
                                    <!-- card completed -->
                                            <center><input type="submit" class="mt-5" name="submit" value="UPDATE" style="display:block;text-align:center;" onclick="reload()" ></center>
                                      
                                            </form>
                                            </div>
        
                                            <?php
                                            ini_set('display_errors', 1);
                                            ini_set('display_startup_errors', 1);
                                            error_reporting(E_ALL);
                                            // echo  "Showing errors";
                                            $now = date('Y-m-d H:i:s');
                                            echo "<br>";
                                            echo "<br>";
                                            echo "<br>";
                                            // echo 'description ' . $desc;
                                            echo "<br>";
                                            // echo 'source ' . $src;
                                            echo "<br>";
                                            // echo $title;
                                            // echo $_SERVER['REQUEST_METHOD'];
                                            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                                              // echo "id";
                                              $postid = $_GET['q'];
                                              $newtitle = $_POST['title'];
                                              $newdesc = $_POST['desc'];

                                              // echo $newtitle . "   " . $newdesc ;
                                              $updtPost = "update  photoshop.post set title = '$newtitle' ,updated_at=now(),	description = '$newdesc' where id=$postid";
                                              // echo $updtPost;
                                              $updatedpost = mysqli_query($conn, $updtPost);
                                              
                                              
                                            }


    // }
    // }
  }
}
// print_r($selected_images);
?>
      <script>
        let ids = [];
        
        function deleteAll(id){
          console.log(id);
          ids.push(id);          
        }

        function reload(){
          location.reload();
        }


        $(document).on('click','#submit_del',function(e){
          console.log("IDs",ids);
          $.ajax({
            url : 'del_mult.php',
            method:'GET',
            data:{ids:ids},
            success:function(data){
              console.log(data);
              console.log('i am going to a new page');
              location.reload();
            }
           });          
        })  
      </script>
</body>
</html>


