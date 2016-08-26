<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Shop Center Admin Dashboard | Login Page</title>
<link rel="stylesheet" type="text/css" href="admin_resource/css/login.css"/>
</head>
<body>
	<div class="container">
    <div class="text-center">
        <img src="admin_resource/image/logo.png" id="logoimg" alt=" Logo"  />
    </div>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
            <form:form action="logincontroller.html" class="form-signin" method="post" commandName="adminuser">
                <p class="text-muted text-center btn-block btn btn-primary btn-rect">
                    Enter your username and password
                </p>
                <font color="#FF0000">
               
                </font>
                <form:input  path="adminUser"  placeholder="Username" class="form-control" value="${adminuser.adminUser}"/>
            
                <form:password path="adminPass" placeholder="Password"  class="form-control" value="${adminuser.adminUser}"/>
           
                <button class="btn text-muted text-center btn-danger" type="submit">Sign in</button>
            </form:form>
        </div>   
    <div class="text-center">
        <ul class="list-inline">
            <li class="text-muted" ><a href="adminlogin.html" data-toggle="tab">Login</a></li>
            <li class="text-muted"><a  href="admin_forget.jsp" data-toggle="tab">Forgot Password</a></li>
        </ul>
    </div>


</div>
</body>
</html>