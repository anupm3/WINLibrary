<?php
    if(isset($_REQUEST['submit'])) {
        // request for data submitted via. membership forms' name
        $id = $_REQUEST['id'];
        $name = $_REQUEST['name'];
        $email = $_REQUEST['email'];
        $password = $_REQUEST['password'];
        $confirmPassword = $_REQUEST['cpassword'];
        $phone = $_REQUEST['phone'];
        // require database connection
        require_once "config.php";
        // require error handlers for form validation
        require_once "../fn/validation.php";

        // anything beside false
        if(emptyInputMembership($id, $name, $email, $password, $confirmPassword, $phone) !== false) {
            header("location: ../../membership.php?error=emptyinput");
            exit(); // stop script from running
        }
        if(invalidUsername($name) !== false) {
            header("location: ../../membership.php?error=invalidUsername");
            exit(); // stop script from running
        }
        if(invalidEmail($email) !== false) {
            header("location: ../../membership.php?error=invalidEmail");
            exit(); // stop script from running
        }
        if(pwdMatch($password, $confirmPassword) !== false) {
            header("location: ../../membership.php?error=passwordmismatched");
            exit(); // stop script from running
        }
        if(userIDExists($conn, $id, $email) !== false) {
            header("location: ../../membership.php?error=userIDtaken");
            exit(); // stop script from running
        }

        // after form validation
        createMember($conn, $id, $name, $email, $password, $phone);
    }
    else {
        header("location: ../../membership.php");
        exit();
    }