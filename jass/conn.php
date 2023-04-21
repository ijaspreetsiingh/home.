<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background:black;
            color:green;
        }
    </style>
</head>
<body>
    

<?php

$conn=mysqli_connect("localhost","root","","login");
// if($conn){
//     echo"done";
// }
$a=$_POST['name'];
$b=$_POST['email'];
$c=$_POST['pass'];
$d=$_POST['phone'];
$data="INSERT INTO `jass` (`id`, `name`, `password`, `email`, `phone`) VALUES (NULL, '$a', '$c', '$b', '$d');";
$e=mysqli_query($conn,$data);
if($e){
    echo"done";
    header("location:login.php");
}
else{
    echo "not done";
}

?>
</body>
</html>