<?php
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);
session_start();
if (isset($_SESSION['user'])) {
  $mail = $_SESSION['user'];

include_once 'connection.php';
  ?>
    <!DOCTYPE html>
  <html lang="en">

  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- bootstrap css file -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <!-- font awesome cdn -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

      <title>Dashboard2 </title>
  </head>

  <body>

  <!-- navbar 2  -->
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

  <div class="container">
      <table class="table table-dark table-striped mt-5">
          <thead>
              <tr>
                  <th scope="col">Post Id</th>
                  <th scope="col">Label</th>
                  <th scope="col">Description</th>
                  <!-- <th scope="col">Image</th> -->
                  <th scope="col">created at</th>
                  <th scope="col">Modified at</th>
                  <th scope="col">Delete</th>
                  <th scope="col">Update</th>
              </tr>
            </thead>
            <tbody>

              <?php

              $sel_reg = "select id from registeration where mail='$mail'";
              // result of mailphp
              $ans_id = mysqli_query($conn, $sel_reg);
              if ($ans_id->num_rows > 0) {
                while ($row1 = $ans_id->fetch_assoc()) {
                  $userid = $row1['id'];
                  $sel_post = "select * from post where user_id = $userid  and is_deleted = 0";
                  // echo $sel_post;
                  $selected_post  = mysqli_query($conn,$sel_post);
                  if($selected_post->num_rows>0){
                    while($row2 = $selected_post->fetch_assoc()){

                   
                  ?>
                   <tr>
                                <th>
                                <?php echo $postid = $row2["id"]; ?>
                                </th>
                                
                                <td>
                                <?php echo $row2["title"] ?>
                                </td>
                                <td>
                                <?php echo $row2["description"]; ?>
                                </td>
                               
                                  <td>
                                    <?php 
                                    $originalDate = $row2['created_at']; 
                                    $newDate = date("d-m-Y h:i:s a", strtotime($originalDate));
                                    ?>
                                  <?php echo $newDate; ?>
                                  </td>
                                  <td>
                                    <?php 
                                  $originalDate = $row2['updated_at']; 
                                  $newDate = date("d-m-Y h:i:s a", strtotime($originalDate));
                                    ?>
                                  <?php echo  $newDate; ?>
                                  </td>
                                  <td>
                                    <a href="deletepost.php?q=<?php echo $postid; ?>"  style="text-decoration: none; color:white;" ><i class="fa-solid fa-trash"></i></a>
                                  </td>
                                  <td>
                                  <a href="updatewithimage.php?q=<?php echo $postid; ?>" style="text-decoration: none; color:white;" ><i class="fa-solid fa-pen-to-square"></i></a>
                                  </td>
                                  </tr>
         

                  <?php
                   }
                  }
                }
              }

              ?>
                 </tbody>
        </table>

             
             </div>



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


          <?php
} else {
  echo "Your session is currently not active.<a href='login.php'>Login Here!</a> ";
}
?>
</body>

</html>