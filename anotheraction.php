<?php

include_once 'connection.php';
session_start();
// $mail = $_SESSION['user'];
print_r($_SESSION);
if (isset($_SESSION['user'])) {
    $mail = $_SESSION['user'];
    // $getuserid = "select id from registeration where mail ='$mail'";
//   echo $getuserid;
//   $final_user_id = mysqli_query($conn, $getuserid);
//   echo "I got userid successfully";
//   if($final_user_id->num_rows > 0 ){
    // while($id =  $final_user_id->fetch_assoc()){
    //   echo $id['id'];
    //   $SESSION['userid'] = $id['id'];
        // echo 'This is userId'. $_SESSION['userid'];
        $userid= $_SESSION['userid'];


            $postid = $_POST['postid'];
            echo "This is postid";
            echo $postid;
            $newtitle = $_POST['title'];
            $newdesc = $_POST['description'];
            // echo "<br>";
            // echo $newtitle . " <br>    " . $newdesc;
            if($newtitle != ""){
                if($newdesc != ""){
                    $query = "update  post set title='$newtitle', description = '$newdesc',updated_at=now() where id='$postid'";
                    echo $query;
                    $updated_query = mysqli_query($conn, $query);
                    echo "<br>";
                    echo "Query executed successfully";
                }else{
                    echo " Description is required";
                }

            }else{
                echo "Title is required";

            }
$total_count = count($_FILES['upload']['name']);
for ($i = 0; $i < $total_count; $i++) {
    $tmpFilePath = $_FILES['upload']['tmp_name'][$i];
    if ($tmpFilePath != "") {
        // $newFilePath = "image/" . $_FILES['upload']['name'][$i];
        $extension = pathinfo($tmpFilePath, PATHINFO_EXTENSION);
        $newFilePath = "image/".  date("Y-m-d h:i:s a"). $i. $extension;
        if (move_uploaded_file($tmpFilePath, $newFilePath)) {
            echo "Successfully uploaded <br>";
            echo $newFilePath . "<br>";
            // need to find userid here
            $query2  = "insert into images (post_id,userid,image) values ($postid,$userid,'$newFilePath')";
            echo $query2;
            $exec_query2 = mysqli_query($conn,$query2);
            echo "<br>";
            

        }
    }
    }
}
echo "Image inserted successfully";
// }
// }
// echo $total_count . "files uploaded successfully";
header('location:dashboard2.php');

?>