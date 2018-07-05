<?php
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
// Find BMI
function BMI($w,$h) {
  global $bmi;
  $bmi = $w/($h*$h);
  return $bmi;
  }
BMI($_POST['weight'],$_POST['height']);

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

$sql = "insert into user_info ($str_key, bmi) values($str_val, '$bmi')";
// $conn1->connect()->query($sql);
if ($conn1->connect()->query($sql)) {
  return true;
}else {
  return false;
  echo $conn1->connect()->error;
}


 ?>
