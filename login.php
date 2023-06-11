<?php
// Start the session
session_start();
error_reporting(0);
if ($_SESSION['user']) {
    echo "You are already logged in";
    echo "<br>";
    echo "Welcome " . $_SESSION['user'];
    header('location:dashboard2.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Login</h1>

    <form action="login.php" method="post" >
    <fieldset>
    
    <div class="mail"  >
    Email:
    <input type="email" id="em" name="em"   />
    </div>
    <div class="pwd">
    password:
    <input type="password" id="pass" name="pass" />
    <p id="vpwd" >
    
    </p>
    </div>

    </fieldset>
    <input type="submit" value="LOGIN" />
    </form>
    Don't have an Account? <a href='register.php'>Register here!</a>
    
    
    
    <?php
    include_once 'connection.php';

    $em = $_POST['em'];
    $pass = $_POST['pass'];

    if ($em != "" && $pass != "") {
        $pass = md5($pass);
        // echo $pass;
        $get_mail = "select  mail,password from registeration where mail= '$em' and password ='$pass'";
        echo "<br>";
        // echo $get_mail;
        $res_mail = mysqli_query($conn, $get_mail);
        echo "<br>";
        if ($res_mail) {
            // echo "Query fetched data from register table successfully";
            echo "<br>";
            print_r($res_mail);
            if ($res_mail->num_rows > 0) {
                // output data of each row
                while ($row = $res_mail->fetch_assoc()) {
                    // echo $row["mail"] . $row['password'];
                    echo "<br>";

                    $ins_login = "insert into login(email,password) values ('$em','$pass')";
                    // echo $ins_login;
                    echo "<br>";
                    $res_login = mysqli_query($conn, $ins_login);
                    if ($res_login) {
                        // echo "Query executed successfully , you are logged in";
                        $_SESSION["user"] = "$em";

                        $get_user_id = "select id from registeration where mail = '$em'";
                        echo $get_user_id;
                        echo "<br>";
                        $ans_id = mysqli_query($conn , $get_user_id);
                        // echo "I am about to get user id";
                        print_r($ans_id);
                        if($ans_id->num_rows>0){
                            while($id = $ans_id->fetch_assoc()){
                                // echo $id['id'];
                                $_SESSION['userid'] = $id['id'];
                            }
                        }
                        header('location:dashboard2.php');
                    } 

                    // print_r($_SESSION);
                }
            } else {
                echo "User with this email is not available";

            }
        } else {
            echo "Wrong email or password";
            echo "<br>";
        }





    }




    ?>
</body>
</html>