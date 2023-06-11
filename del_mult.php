<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <title>Delete multiple Page</title>
</head>
<body>
<?php
    // ini_set('display_errors', 1);
    // ini_set('display_startup_errors', 1);
    // error_reporting(E_ALL);

    session_start();
    $mail =  $_SESSION['user'];
    echo "Welcome ". $mail;
    include_once 'connection.php';
    $ids = $_GET['ids'];
    echo 'Ids get printed successfully'.$ids;
    print_r($ids);
    for ($i = 0; $i < sizeof($ids); $i++) {

    $get_post = "update images set is_deleted = 1 where id= $ids[$i]";

    echo $get_post;
    $deleted_post = mysqli_query($conn, $get_post);
    echo "Post deleted successfully";
   
    
    }

    // foreach($key as $ids){
    //     $get_post = "update images set is_deleted = 1 where id= $ids[$i]";
    //     echo $get_post;
    //     $deleted_post = mysqli_query($conn, $get_post);
    //     echo "Post deleted successfully";
    // }

?>
 <script>
    location.reload(true);
    </script>
</body>
</html>