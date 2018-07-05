<?php
//if( !error_reporting(0)){
  $conn_error = "Sorry, Could not Connect";

  $mysql_host = "localhost";
  $mysql_user = "root";
  $mysql_pass = "";

  $db = 'nutrition_project';


class ConnDb extends MySQli{
  protected $conn;
  public function the_conn($host, $user, $pass,$db)
  {
    if ($this->conn = new MySQli($host, $user, $pass,$db)) {
      return $this->conn = new MySQli($host, $user, $pass,$db);
    }else {
      return "Not connected ";
    }
  }
  public function connect()
  {
    $connectDb = new MySQli ('localhost','root','','nutrition_project');
    return $connectDb;
  }
  function __set($name, $value)
  {
    switch ($name) {
      case 'conn':
        $this->conn = $value;
        // echo $this->conn;
        break;

      default:
        echo $name." not found";
        break;
    }
  }
}

 ?>
