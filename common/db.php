<?php
/*$servername="db4free.net:3306";
$username="dbtektons"; //database username
$password="dbtektons"; //database password
$dbname="dbtektons"; //database name
$conn = mysqli_connect($servername, $username, $password, $dbname); */

/*
$servername = "localhost:4913";
$username = "developer";
$password = "developer";
$dbname = "dbtektons1";
*/
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dbtektons";

$conn = mysqli_connect($servername, $username, $password, $dbname);
 

// // Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";
?>

