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
session_start();
$conn=mysqli_connect("localhost","root","","login");
$a=$_POST['name'];
$b=$_POST['pass'];
$_SESSION['per']=$a;
$_SESSION['pas']=$b;
$c="select * from `jass` where name='$a' && password='$b'";
$d=mysqli_query($conn,$c);
$new=mysqli_num_rows($d);
if($new){
    echo "password thik ha";
        header("location:project/test.php");
   // header("location:index.php");
}
else{
    echo "galt ha";
}

?>
</body>
</html>