<?php
require 'conn.php';

print_r($_POST);

function validate_data($value){
  stripslashes($value);
  htmlspecialchars($value);
  return $value;
}
$food_table = validate_data($_POST['food_table']);
$Name  = validate_data($_POST['Name']);
$Carbohydrates = validate_data($_POST['Carbohydrates']);
$Protein = validate_data($_POST['Protein']);
$Fats = validate_data($_POST['Fats']);
$Vitamins = validate_data($_POST['Vitamins']);
$Minerals = validate_data($_POST['Minerals']);
$Total_Calories = validate_data($_POST['Total_Calories']);

//  Function to post Data
function post_food($data){
  global $Name, $Carbohydrates, $Protein, $Fats, $Vitamins, $Minerals, $Total_Calories;
  echo $query = "insert into ".$data." (Name, Carbohydrates, Protein, Fats, Vitamins, Minerals, Total_Calories) values('$Name', '$Carbohydrates', '$Protein', '$Fats', '$Vitamins', '$Minerals', '$Total_Calories')";
}

 post_food($food_table);

 ?>
