

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Talk2Me Admin Dashboard | Login Page</title>
<link rel="stylesheet" type="text/css" href="admin_resource/css/login.css"/>
</head>

<body>
		 <div class="container">
    <div class="text-center">
        <img src="admin_resource/image/logo.png" id="logoimg" alt=" Logo"  />
    </div>
    
        <div id="forgot" class="tab-pane">
            <form action="index.html" class="form-signin">
                <p class="text-muted text-center btn-block btn btn-primary btn-rect">Enter your valid e-mail</p>
                <input type="email"  required="required" placeholder="Your E-mail"  class="form-control" />
                <br />
                <button class="btn text-muted text-center btn-success" type="submit">Recover Password</button>
            </form>
        </div>
       
    <div class="text-center">
        <ul class="list-inline">
            <li class="text-muted" ><a href="index.php" data-toggle="tab">Login</a></li>
            <li class="text-muted"><a  href="admin_forgot.php" data-toggle="tab">Forgot Password</a></li>
        </ul>
    </div>


</div>
</body>
</html>