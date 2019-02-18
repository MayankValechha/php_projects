<?php
//Connect to MYSQL
$db_connect = mysqli_connect('localhost','root','123456','shout_it');

//Test Connection
if(mysqli_connect_errno()) {
    echo 'Failed to Connect'.mysqli_connect_errno();
}

