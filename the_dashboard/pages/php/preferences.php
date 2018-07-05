<?php
// Connect To The Database
require 'conn.php';

class food extends ConnDb{
  public static $counter = 1;
  public $sql_food;

// The Construct Will Take The Name Of Table To Be Queried  & An Arbitrally Name Of The Array
  function __construct(){
    // $this->select_food($name, $the_array);
    self::$counter++;
  }

// select_food function Will Be The One To Get The Data From Db
  public function select_food($name, $the_array){

     // Create An Instance Of Connection To Db , ConnDb Class Has Been Created In The Connection File
      $pre_conn = new ConnDb();

      // Initialize An Array To Store The Queried Data
      $the_array= array();

      // Query Data From Database
      $query_food = $pre_conn->connect()->query("select * from ".$name."");
      while ($a = $query_food->fetch_assoc()) {

        // Push The Data To An Array
        array_push($the_array , $a);
      }
      // Return The Array Of The Data Fetched
      return $the_array;
  }
}

  // An Instance Of Class To Pass Create An Object.
$fruits1 = new food();

// Intializing The Big Array To Store The Returned Array From (Food Class)
$big_array = array();

// Simulteneously Push The Returned Array While Intializing Them.
array_push($big_array,($fruits1->select_food('fruits_table','array_fruits')) );
array_push($big_array,($fruits1->select_food('cereals_table','array_cereals')) );
array_push($big_array,($fruits1->select_food('meat_table','array_meat')) );
array_push($big_array,($fruits1->select_food('dairly_table','array_dairly')) );
array_push($big_array,($fruits1->select_food('user_info','users')) );
array_push($big_array,($fruits1->select_food('favorites','favorites')) );
array_push($big_array,($fruits1->select_food('user_preferences','user_preferences')) );

// Echo The Big Array To Be Fetched By The UI Page..
echo json_encode($big_array);



 ?>
