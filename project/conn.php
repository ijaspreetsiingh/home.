<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            background:black;
            color:green;
        }
    </style>
</head>
<body>
<?php
if(isset($_POST["submit"])){
   // $name = $_POST["name"];
    if($_FILES["image"]["error"] == 4){
      echo
      "<script> alert('Image Does Not Exist'); </script>"
      ;
    }
    else{
      $fileName = $_FILES["image"]["name"];
      $fileSize = $_FILES["image"]["size"];
      $tmpName = $_FILES["image"]["tmp_name"];
  
      $validImageExtension = ['jpg', 'jpeg', 'png'];
      $imageExtension = explode('.', $fileName);
      $imageExtension = strtolower(end($imageExtension));
      if ( !in_array($imageExtension, $validImageExtension) ){
        echo
        "
        <script>
          alert('Invalid Image Extension');
        </script>
        ";
      }
      else if($fileSize > 1000000){
        echo
        "
        <script>
          alert('Image Size Is Too Large');
        </script>
        ";
      }
      else{
        $newImageName = uniqid();
        $newImageName .= '.' . $imageExtension;
  
        move_uploaded_file($tmpName, 'img/' . $newImageName);
      
      
        $conn=mysqli_connect("localhost","root","","quiz");
        // if($conn){
        //     echo"done";
        // }
        $a=$_POST['name'];
        session_start();
        $_SESSION['per']=$a;
        $_SESSION['name']=$a;
        $b=$_POST['email'];
        $c=$_POST['pass'];
        $d=$_POST['phone'];
        $data="INSERT INTO `admin` (`id`, `name`, `password`, `email`, `phone`, `img`) VALUES (NULL, '$a', '$c', '$b', '$d' ,'$newImageName');";
        $e=mysqli_query($conn,$data);
        if($e){
            echo"done";
            header("location:dashbord.php");
        }
      
      
      
      
      
      
      
      
        // $query = "INSERT INTO tb_upload VALUES('', '$name', '$newImageName')";
        // mysqli_query($conn, $query);  document.location.href = 'dashbord.php';
        // echo
        // "
        // <script>
        //   alert('Successfully Added');
         
        // </script>
        // ";
      }
    }
  }
?>    





<?php

// $conn=mysqli_connect("localhost","root","","quiz");
// if($conn){
//     echo"done";
// }
// $a=$_POST['name'];
// session_start();
// $_SESSION['per']=$a;
// $b=$_POST['email'];
// $c=$_POST['pass'];
// $d=$_POST['phone'];
// $data="INSERT INTO `admin` (`id`, `name`, `password`, `email`, `phone`) VALUES (NULL, '$a', '$c', '$b', '$d');";
// $e=mysqli_query($conn,$data);
// if($e){
//     echo"done";
//     header("location:dashbord.php");
// }
// else{
//     echo "not done";
// }

?>
</body>
</html>