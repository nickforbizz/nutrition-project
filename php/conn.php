<?php
//if( !error_reporting(0)){
  $conn_error = "Sorry, Could not Connect";

  $mysql_host = "localhost";
  $mysql_user = "root";
  $mysql_pass = "";

  $db = 'nutrition_project';

  $conn = new MySQli($mysql_host, $mysql_user, $mysql_pass, $db);
  $conn2 = new MySQli($mysql_host, $mysql_user, $mysql_pass, "finance");

  if ($conn->errno) {
  	echo $conn->error;
  }else {
    return true;
    echo "connected";
  }
//}else{  echo $conn_error}
echo $conn_error;

 ?>
