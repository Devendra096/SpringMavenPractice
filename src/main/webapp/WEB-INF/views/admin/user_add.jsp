<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8" />
    <title>Talk2Me | Dashboard </title>
     <meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="Shuraj" />
     <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <!-- GLOBAL STYLES -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/maincss.css" />
    <link rel="stylesheet" href="assets/css/main.css" />

    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="assets/css/layout2.css" rel="stylesheet" />
       
    <!-- END PAGE LEVEL  STYLES -->
  
</head>

    <!-- END HEAD -->

    <!-- BEGIN BODY -->
<body class="padTop53 " >

    <!-- MAIN WRAPPER -->
    <div id="wrap" >
        

        <!-- HEADER SECTION -->
   <% request.getRequestDispatcher("admin_header.jsp").include(request,response); %>
        <!-- END HEADER SECTION -->



        <!-- MENU SECTION -->
    <% request.getRequestDispatcher("admin_leftside.jsp").include(request,response); %>
        <!--END MENU SECTION -->



        <!--PAGE CONTENT -->
        <div id="content">
             
            <div class="inner" style="min-height: 700px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Add New User </h1>
                    </div>
                </div>
                  <hr />
                  <div class="content_board">
                    <div class="add_user">
                   
                    <form action="/OnlineShopingProject/UserController" method="post" class="form_add">
                     
  
                    <label>First Name</label>
                     <input type="text" placeholder="First Name" class="form_add_list form_fname" 
                     	name="firstname"  />
                        <font color="red"></font>
                        <br/>
                     <label>Last Name</label>
                     <input type="text" placeholder="Last Name" class="form_add_list from_lname" 
                      name="lastname" value=""/>
                      <font color="red"></font>
                      <br/>
                    <label>Email (*)</label>
                    <input type="text" placeholder="Your E-mail" class="form_add_list form_email" 
                     name="email" value=""/>
                     <font color="red"></font>
                     <br/>
                    <label>Password</label>
                    <input type="password" placeholder="password" class="form_add_list form_pass" 
                     name="password" value="" />
                     <font color="red"></font>
                     <br/>
                      <label>Phone no</label>
                    <input type="text" placeholder="phone no" class="form_add_list form_pass" 
                     name="phoneno" value="" />
                     <font color="red"></font>
                     <br/>
                    
				<input type="submit" class="btn text-muted text-center btn-success btn_add" value="Add user"/>
            </form>
                    </div>
                  </div>
               </div>   
        </div>
        <!--END PAGE CONTENT -->

         <!-- RIGHT STRIP  SECTION -->
         <% request.getRequestDispatcher("admin_rightside.jsp").include(request,response); %>
         <!-- END RIGHT STRIP  SECTION -->
    </div>

    <!--END MAIN WRAPPER -->

    <!-- FOOTER -->
 
    <!--END FOOTER -->


    <!-- GLOBAL SCRIPTS -->
    <script src="assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->



</body>

    <!-- END BODY -->
</html>
