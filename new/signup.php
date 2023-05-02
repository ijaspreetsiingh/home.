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

            margin-top:19%;
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
            margin-top:0px;
        }
    </style>
</head>
<body>

<div class="count">
    <input type="color" name="" id="clr">
    <input type="submit" onclick="jass()" name="" id="">
</div><center>
    <br><br><br><br><br><br>
    <form action="done.php" method="POST"><center>
        <h1>login</h1>
        <input type="text" required placeholder="name" name="name" id=""><br><br>
        <input type="password" required placeholder="password" name="pass" id=""><br><br>
        <button type="submit">submit</button></center><br><br>
        <span>If have an account
        <a href="sign.php">signup</a></span><br><br>
    </form></center>

<script>
function jass(){
    let a = document.getElementById('clr').value;
    document.body.style.backgroundColor=a;
}
</script> 
</body>
</html>