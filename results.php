<?php
$server="localhost";
$username="stark";
$password="1598753";
$db_name="projet_vers_2";

$conn = new mysqli($server,$username,$password,$db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>