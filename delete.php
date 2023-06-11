<?php
    session_start();
   $mail =  $_SESSION['user'];
    echo "Welcome ". $mail;

    $post = $_GET['postid'];
    echo $post;
    include_once 'connection.php';
    $get_post = "update images set is_deleted = 1 where id= $post";
    
    echo $get_post;
    $deleted_post = mysqli_query($conn , $get_post);
    echo "Post deleted successfully";
    header('location:dashboard2.php');
?>