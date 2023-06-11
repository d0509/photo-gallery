<?php
include_once 'connection.php';

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
    header('location:register.php');
}
?>