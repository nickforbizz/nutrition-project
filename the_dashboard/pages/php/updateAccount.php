<?php
print_r($_POST);

require './../../../php/conn.php';
function validateStudent($name){
  $name = trim($name);
  $name = stripslashes($name);
  $name = htmlspecialchars($name);
  return $name;
}
# code...
$username = validateStudent($_POST['UserName']); // removes backslashes
$email = validateStudent($_POST['email']);
$trn_date = date("Y-m-d H:i:s");
$password = validateStudent($_POST['user_password']);
$password_hash = md5($password);

// For canging password
if (!empty($_POST['user_password']) && !empty($_POST['user_password2'])) {
  # code...
  if ($_POST['user_password'] == $_POST['user_password2']) {
    $query = "update users set password='$password' where id='$_POST[user_id]'";
    $result = $conn->query($query);
  }else {
    echo "Password Didn't Match";
  }
}

// For canging UserName
if (!empty($username)) {
  $query = "update users set username='$username' where id='$_POST[user_id]'";
  $result = $conn->query($query);
}

// For email
if (!empty($email)) {
  $query = "update users set email='$email' where id='$_POST[user_id]'";
  $result = $conn->query($query);
}
if (!empty($_FILES['file'])) {
  # code...
  if (isset($_FILES['file'])) {
    # code...

    $file_ext = strtolower(end(explode('.', $_FILES['file']['name']) ));
    $ok = 1;
    $time=time();
    $location = "./../the_dashboard/userImg/";
    $locationDb = "userImg/";
    $expensions = array("gif", "jpeg", "jpg", "png");
    // check the file type and set $ok var
    if (in_array($file_ext, $expensions) === false ){
      echo "please Upload images Only".'<br>';
      $ok = 0;
    }
    move_uploaded_file($_FILES['file']['tmp_name'],$location.$time);
    $db_img_link = $locationDb.$time;

    $query = "update users set imageTitle='$db_img_link' where id='$_POST[user_id]'";
    $result = $conn->query($query);
    // $query = "INSERT into `users` (username, password, email, date_created, imageTitle) VALUES ('$username', '$password_hash', '$email', '$trn_date','$db_img_link')";
  }
}

 ?>
