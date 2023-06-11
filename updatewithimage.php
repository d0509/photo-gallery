<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
session_start();
include_once 'connection.php';
if (isset($_SESSION['user'])) {
  $mail = $_SESSION['user'];
  // $getuserid = "select id from registeration where mail ='$mail'";
// echo $getuserid;
// $final_user_id = mysqli_query($conn, $getuserid);
// echo "I got userid successfully";
// if($final_user_id->num_rows > 0 ){
  // while($id =  $final_user_id->fetch_assoc()){
    // echo $id['id'];
    // $SESSION['userid'] = $id['id'];
  // }
// }
  


  ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update with image</title>
    <!-- jquery cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <!-- bootstrap cdn -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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

    <form action="anotheraction.php" method="post" enctype="multipart/form-data" >
      
        <?php
          $postid = $_GET['q'];
          // echo $postid;
          $query = "select * from post where id = $postid";
          // echo $query;
          $ansquery = mysqli_query($conn,$query);
          echo "<br>";
          // echo "Query executed successfully";
          echo "<br>";
          // print_r($ansquery);
          if($ansquery -> num_rows>0){
            while( $row = $ansquery->fetch_assoc()){
              ?>
          <div class="container mt-5 ">
            <div class="mb-3 row">
                <label class="col-sm-2 ">Title</label>
                <div class="col-sm-10">
                  <input type="text"  class="form-control" name="title" id="inputTitle" value="<?php echo $row['title'] ;?>" >
                </div>
              </div>
              <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Description</label>
                <div class="col-sm-10">
                  <input type="textarea" class="form-control" name="description" id="inputDescription" value="<?php echo $row['description'] ;?>" >
                </div>
              </div>
              <input type='hidden' value='<?php echo $postid ?>' name = "postid" />
              <div class="mb-3 row">
                <label for="inputFile" class="col-sm-2 form-label">Upload File</label>
                <div class="col-sm-10">
                    <input class="form-control" type="file" id="formFile" name="upload[]"   multiple  >
                </div>                
              </div>

              <div class="col-12 ">
                <button type="submit" class="btn btn-primary">UPDATE</button>
              </div>

              <input type="button" name="submit_del" id="submit_del" value="Multiple Delete" onclick="return confirm('Are you sure you want to delete?')" class="btn btn-danger" />

              <?php
            
          $get_images = "select * from images where post_id = $postid and is_deleted = 0";
          // echo $get_images;
          $got_images = mysqli_query($conn , $get_images);
          // echo "Images got successfully";
          // print_r($got_images);
          
          if($got_images->num_rows > 0 ){
            while($row2 = $got_images->fetch_assoc()){
              ?>
                                      <div class="card mb-3 d-flex" id="<?php $image['id']; ?>" name="id[]" style="max-width: 540px;">
                                      <input type='hidden' id="<?php  ?>" />
                                        <div class="row g-0">
                                          <div class="col-md-4">
                                            <img src="<?php echo $row2['image'] ?>" class="img-fluid rounded-start" alt="...">
                                          </div>
                                          <div class="col-md-8">
                                            <div class="card-body" id="<?php echo $row2['id']; ?>" >
                                              <p class="card-text"><small class="text-muted">Last updated <?php $originalDate = $row['updated_at'];$newDate = date("d-m-Y h:i:s a", strtotime($originalDate));echo $newDate; ?></small></p>
                                              <input type="hidden" name="<?php echo $row['id'] ?>"  />
                                              <input class="form-check-input" type="checkbox" id="<?php echo $image['id']; ?>" onclick="deleteAll(<?php echo $row2['id'] ?>)" />
                                              <a href="delete.php?postid= <?php echo $row2['id'] ?>" class="btn btn-danger">Delete</a>  
                                            </div>
                                          </div>
                                        </div>
                                      </div>
              <?php
            }
          }
        }
      }
        ?>
        

      
        </div>

    </form>

    
    <!-- bootstrap js file -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
          integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
          crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
          integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
          crossorigin="anonymous"></script>
          <script>
        let ids = [];
        
        function deleteAll(id){
          console.log(id);
          ids.push(id);   
          console.log(ids);       
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

<?php
}
?>