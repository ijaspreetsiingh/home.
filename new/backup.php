<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-color: black;
            color:white;
        }
        .h{
            color: green;
        }
        button{
            padding:10px;
            background:green;
            color:black;
            border-radius:15%;
        }
        button:hover{
            background:black;
            color:white;
        }
        .count{
            margin-top:300px;
        }
    </style>
</head>
<body>
    <button onclick="window.location.href = 'login.php';">logout</button>
    
<marquee behavior="" direction="">

<h1 class="h">Hello dear

<?php
session_start();
echo $_SESSION['per'];
$na=$_SESSION['per'];
$conn=mysqli_connect("localhost","root","","login");
$sel="SELECT * FROM `jass` where name='$na'";
$new=mysqli_query($conn,$sel);
$row=mysqli_fetch_assoc($new);
$em = $row['email'];
$ph = $row['phone'];
    // if ($row[name]=$_SESSION['per']) {
    //     # code...
        
    // }

// echo $em;


?>
</h1>

</marquee>

<center>
<h1>Your data</h1>
<table border=2px>
<tr>
    <th>id</th>
    <th>Name</th>
    <th>Password</th>
    <th>Email</th>
    <th>Phone</th>
  </tr>
  <tr>
    <td><?php echo "1"; ?></td>
    <td><?php echo  $_SESSION['per']; ?></td>
    <td><?php echo  $_SESSION['pas']; ?></td>
    <td><?php echo $em; ?></td>
    <td><?php echo $ph; ?></td>
  </tr>
</table>
</center>

<div class="count">
    <input type="color" name="" id="clr">
    <input type="submit" onclick="jass()" name="" id="">
</div>
<script>
function jass(){
    let a = document.getElementById('clr').value;
    document.body.style.backgroundColor=a;
}
</script>    

</body>
</html>