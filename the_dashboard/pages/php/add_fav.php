<?php
require 'conn.php';
// print_r($_POST);

function food_type($name){
  return $name;
}

$food_name = food_type($_POST['food_type']);

// Create An Instance Of Connection To Db , ConnDb Class Has Been Created In The Connection File
 $conn2 = new ConnDb();

// $query_select = $conn->connect()->query("SELECT * FROM table");

// echo "insert into favorites ($food_name,  time_of_day ) values('$_POST[food_id]', '$_POST[day_time_meal]' )";
$query2 = $conn2->connect()->query("insert into favorites ($food_name,  time_of_day, user ) values('$_POST[food_id]', '$_POST[day_time_meal]', '$_POST[user_id]' )");
if ($query2) {
  return "Success";
}
echo $conn2->connect()->error;
 ?>
