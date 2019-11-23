<?php
include('config/mysql.php');
include('config/path.php');
if(isset($_REQUEST['btnLogin'])){
    $user = $_REQUEST['user'];
    $pass = $_REQUEST['pass'];
    $url = URL;
    $res = $cn->query("SELECT * FROM account WHERE codename = '$user' and password = '$pass'");
	if($res->num_rows > 0){
        $row = $res->fetch_array();
        $_SESSION['codename'] = $user;
        header("location:$url"."components/?id=$user");
    }
    else{
        $err = 'Invalid your username and password';
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logistic</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="assets/style.css" crossorigin="anonymous">
</head>

<body>
<?php if(isset($err)){?>
    <div class="err"><?php echo $err;?></div>
<?php } ?>

    
<form class="login-form" method="POST">
<center>
    <img src="img/logo.png" class="img-fluid logo">
    </center>
<div class="textType">
    <label>Username</label>
<input type="text" name="user" class="user" placeholder="Username">
</div>

<div class="textType">
    <label class="marginTop" >Password</label>
<input type="password" name="pass" class="pass"  placeholder="Password">
</div>
<input type="submit" value="Login" name="btnLogin" class="btnLogin">
</form>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</html>
