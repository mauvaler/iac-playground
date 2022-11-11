<?php
$servername = "mysql";
$username = "root";
$password = "pass123";
$database = "test";

$link = new mysqli($servername, $username, $password, $database);

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
?>
