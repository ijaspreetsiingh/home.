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
            color:white;
        }
        input{
            padding:10px;
        }
        form{
            border:2px solid black;
            width: 270px;
            border:2px solid white;
            margin-top:50px;
        }
        button{
            padding:10px;
            background:green;
            color:black;
            border-radius:15%;
        }
        button:hover{
            padding:10px;
            background:black;
            color:white;
        }
        .count{
            margin-top:80px;
        }
    </style>
</head>
<body>
  


<center>
    <form action="conn.php" method="POST"><center>
        <h1>signup</h1>
        <input type="text" required placeholder="name" name="name" id=""><br><br>
        <input type="email" placeholder="Email" name="email" id=""><br><br>
        <input type="number" placeholder="phone" name="phone" id=""><br><br>
        <input type="password" placeholder="password" name="pass" id=""><br><br>
        <span>If have not account
        <a href="signup.php">login</a></span><br><br>
        <button type="submit">submit</button></center><br><br>
    </form></center>
    
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