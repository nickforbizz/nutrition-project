<?php
print_r($_POST);
require 'conn.php';

// Create An Instance Of Connection To Db , ConnDb Class Has Been Created In The Connection File
 $conn1 = new ConnDb();

// Avoid Exploit Of DB
function validateStudent($name){
  $name = trim($name);
  $name = stripslashes($name);
  $name = htmlspecialchars($name);
  return $name;
}
if ($_POST['post'] == 'insert') {
      // Assign $_POST vals
      $str_key = "";
      $str_val = "";
      $i=0; //Incase $_POST var has one val
      foreach ($_POST as $key => $value) {
        if ($i == 0) {
          validateStudent($value);
          $str_key = "$key";
          $str_val = "'$value'";
        }else {
          validateStudent($value);
          $str_key.=",$key";
          $str_val.=",'$value'";
        }
        $i++;
      }
    // Inserting preferences To DB
    $conn1->connect()->query("insert into user_preferences ($str_key) values($str_val)");
    // echo "insert into user_preferences ($str_key) values($str_val)";
}elseif ($_POST['post'] == 'delete') {
  // Delete to DB
    $conn1->connect()->query("delete from user_preferences where favMealsID='$_POST[favMealsID]' and user='$_POST[user]' ");
}
// echo "delete from user_preferences where favMealsID='$_POST[favMealsID]' and user='$_POST[user]' ";

 ?>
