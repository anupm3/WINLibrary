<?php
    if(isset($_REQUEST['submit'])) {
        // request for data submitted via. contact forms
        $id = $_REQUEST['id'];
        $name = $_REQUEST['name'];
        $email = $_REQUEST['email'];
        $message = $_REQUEST['message'];
        // require database connection
        require_once "config.php";
        // require error handlers for form validation
        require_once "../fn/validation.php";

        // anything beside false
        if(emptyInputContact($id, $name, $email, $message) !== false) {
            header("location: ../../contactUs.php?error=emptyinput");
            exit(); // stop script from running
        }
        if(invalidUsername($name) !== false) {
            header("location: ../../contactUs.php?error=invalidUsername");
            exit(); // stop script from running
        }
        if(invalidEmail($email) !== false) {
            header("location: ../../contactUs.php?error=invalidEmail");
            exit(); // stop script from running
        }

        // after form validation
        createMessage($conn, $id, $name, $email, $message);
    }
    else {
        header("location: ../../contactUs.php");
        exit();
    }