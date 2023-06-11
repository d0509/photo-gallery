<?php
// Start the session
session_start();
if($_SESSION['user']){
    echo "You are already logged in";
    echo "<br>";
    echo "Welcome ". $_SESSION['user'];
    header('location:dashboard2.php');
}
print_r($_POST);
// die;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Register</title>
    <style>
        
    </style>
</head>

<body>
<?php
$name = $surname = $mail = $pwd = $phone = $dob = $profile = "";
$nameErr = $surnameErr = $mailErr = $pwdErr = $phoneErr = $profileErr = $message = "";

function testing($e)
{
    $e = trim($e);
    $e = stripslashes($e);
    $e = htmlspecialchars($e);
    return $e;
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $name = testing($_POST['name']);
    echo $name;
    echo strlen($_POST['name']);
    if (strlen($_POST['name']) == 0) {
        $nameErr = "Name is required";
    } else if (!preg_match("/^[a-zA-Z-' ]*$/", $_POST['name'])) {
        $nameErr = "Plase enter valid name";
    } else {
        $nameErr = "";
        $name = testing($_POST['name']);
    }


    $surname = testing($_POST['surname']);
    if (empty($_POST['surname'])) {
        $surnameErr = "Surname is required";
    } else if (!preg_match("/^[a-zA-Z-' ]*$/", $_POST['surname'])) {
        $surnameErr = "Only letters and white space allowed";
    } else {
        $surnameErr = "";
        $surname = testing($_POST['surname']);
    }

    $mail = testing($_POST['mail']);
    if (empty($_POST['mail'])) {
        $mailErr = "E-mail is required";
    } else if (filter_var($mail, FILTER_VALIDATE_EMAIL)) {
        $mailErr = "";
        $mail = testing($_POST['mail']);
    } else {

        $mail = testing($_POST['mail']);
    }


    $pwd = testing($_POST['pwd']);
    if (empty($_POST['pwd'])) {
        $pwdErr = "Password is required";
    } else if (preg_match("$\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])(?=\S*[\W])\S*$", $_POST['name'])) {
        $pwdErr = "Please enter valid password";
    } else {
        $pwdErr = "";
        $pwd = testing($_POST['pwd']);
    }


    $phone = testing($_POST['phone']);
    if (empty($_POST['phone'])) {
        $phoneErr = "Contact no. is required";
    } else if (!preg_match("/^[0-9]{10}$/", $_POST['phone'])) {
        $phoneErr = "Plase enter valid contact number";
    } else {
        $phoneErr = "";
        $phone = testing($_POST['phone']);
    }
    $today = date("Y-m-d");
    echo $today;
    $dob = testing($_POST['dob']);
    if (empty($_POST['dob'])) {
        $dobErr = "Date of birth is required";
    } else if ($dob < $today) {
        $dobErr = "Please enter valid date of birth";
    } else {
        $dobErr = "";
        $dob = $_POST['dob'];
    }

    $profile = $_FILES['profile'];



}
?>

        <div>
            <h1>Register</h1>
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
        <fieldset>
            <div class="name">
                Name: <input type="text" name="name" id="name" value="<?php echo $_POST['name']; ?>"  />
               <p id="vname"><?php echo $nameErr; ?></p>
            </div>
            <div class="lname">
                Surname: <input type="text" name="surname" id="surname" value="<?php echo $_POST['surname']; ?>" />
                <p id="vlname" ><?php echo $surnameErr; ?></p>
            </div>
            <div class="mail">
                Email: <input type="email" name="mail" id="mail" value="<?php echo $_POST['mail']; ?>" />
                <p id="vmail" ><?php echo $mailErr; ?></p>
            </div>
            <div class="pwd">
                Password: <input type="password" name="pwd" id="pwd" value="<?php echo $_POST['pwd']; ?>" />
                <span>Password should contain uppercase, lowercase , special character and numeric value and length should be 8 characters long</span>
                <p id="vpwd" ><?php echo $pwdErr; ?></p>
            </div>
            <div class="phone">
                Contact no: <input type="tel" name="phone" id="phone" value="<?php echo $_POST['phone']; ?>" />
                <p id="vphone" ><?php echo $phoneErr; ?></p>
            </div>
            <div class="dob">
                Date of Birth: <input type="date" name="dob" id="dob" value="<?php echo $_POST['dob']; ?>"/>
                <p id="vdob" ><?php echo $dobErr; ?></p>
            </div>
            <div class="profile">
                Profile Photo: <input type="file" name="profile" id="profile" value="<?php echo $_FILES['profile']; ?>"/>
                <p id="vprofile" ><?php echo $profileErr; ?></p>
            </div>

        </fieldset>
        <button type="submit">SUBMIT</button>
    </form>
    Already have an Account? <a href="login.php">Login Here!</a>
        </div>
    
        <?php
        include_once 'connection.php';
        $target_dir = "image/";
        $target_file = $target_dir . basename($_FILES["profile"]["name"]);
        echo "<br>";
        echo $target_file;
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        // Check if image file is a actual image or fake image
        if (isset($_POST["submit"])) {
            $check = getimagesize($_FILES["profile"]["tmp_name"]);
            if ($check !== false) {
                echo "<br>";
                echo "File is an image - " . $check["mime"] . ".";
                $uploadOk = 1;
            } else {
                echo "<br>";
                echo "File is not an image.";
                $uploadOk = 0;
            }
        }

        // Check if file already exists
        // if (file_exists($target_file)) {
        //     echo "<br>";
        //     echo "Sorry, file already exists.";
        //     $uploadOk = 0;
        // }

        // Check file size
        if ($_FILES["profile"]["size"] > 500000) {
            echo "<br>";
            echo "Sorry, your file is too large.";
            $uploadOk = 0;
        }

        // Allow certain file formats
        if (
            $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif"
        ) {
            echo "<br>";
            echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
            $uploadOk = 0;
        }

        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo "<br>";
            echo "Sorry, your file was not uploaded.";
            // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES["profile"]["tmp_name"], $target_file)) {
                echo "<br>";
                echo "The file " . htmlspecialchars(basename($_FILES["profile"]["name"])) . " has been uploaded.";
            } else {
                echo "<br>";
                echo "Sorry, there was an error uploading your file.";
            }
        }
        $pwd = md5($pwd);
        if ($name != "" && $surname != "" && $mail != "" && $pwd != "" &&$phone != "" && $dob != "" && $nameErr == "" && $surnameErr == "" && $mailErr == "" && $pwdErr == "" && $phoneErr == "" && $dobErr == "" ) {
            echo "Profile" . $_FILES['profile'];
            if ($_FILES['profile'] != "/opt/lampp/htdocs/form/task1/image/") {
                echo "<br>";
                echo $target_file;
                $ins_registeration = "insert into registeration (name,surname,mail,password,contact,birthdate,profile) values('$name','$surname','$mail','$pwd','$phone','$dob','$target_file')  ";
                echo "<br>";
                // echo $ins_registeration;
                $res_registeration = mysqli_query($conn, $ins_registeration);
                echo "<br>";
                // echo "Query executed successfully with insertion of profile picture";
                header('location:login.php');
            }
            else{
                $ins_registeration = "insert into registeration (name,surname,mail,password,contact,birthdate) values('$name','$surname','$mail','$pwd','$phone','$dob')  ";
                echo "<br>";
                // echo $ins_registeration;
                $res_registeration = mysqli_query($conn, $ins_registeration);
                echo "<br>";
                // echo "Query executed successfully without insertion of profile picture";
                header('location:login.php');

            }

        } else {
            echo "<br>";
            echo "Insert in all required field first!!!";
        }

        ?>

   
</body>

</html>