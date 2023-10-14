<?php 
session_start();
require "connection.php";

echo "Connected to MySQL successfully";

$connection->close();
?>
