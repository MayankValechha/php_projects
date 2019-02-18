<?php

    require('database.php');
    
    if(isset($_POST['submit'])) {
        
        $user = mysqli_real_escape_string($db_connect, $_POST['user']);
        $msg = mysqli_real_escape_string($db_connect, $_POST['message']);

        //Set Timezone
        date_default_timezone_set('Asia/Kolkata');
        $tim = date('h:i:s a', time());

        if(!isset($user) ||  $user == '' || !isset($msg) ||  $msg == '' ) {
            $error = 'Please Enter your Name or Message';
            header('Location: index.php?error='.urlencode($error));
        }
        else {
            $query = "INSERT INTO shouts (users,message,time) 
                        VALUES ('$user','$msg','$tim')";

            if(!mysqli_query($db_connect, $query)) {
                die('Error : '.mysqli_errno($db_connect));
            }
            else {
               header('Location: index.php');
               exit(); 
            }
        }   
    }