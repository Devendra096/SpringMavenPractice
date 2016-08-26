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
       <%@ include file="admin_header.jsp" %>
        <!-- END HEADER SECTION -->



        <!-- MENU SECTION -->
      <%@ include file="admin_leftside.jsp" %>
        <!--END MENU SECTION -->



        <!--PAGE CONTENT -->
        <div id="content">
             
            <div class="inner" style="min-height: 700px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1> User Management </h1>
                    </div>
                </div>
                  <hr />
                  <div class="content_board">
                    <div class="search_box">
                    <form class="form_search" action="user.php" method="post">
                    	<input type="text" class="search_user" name="search_user" placeholder="Search user" />
                        <button type="submit" class="btn_search" name="btn_search">Search</button>
                    </form>
                    </div>
                    <div class="user_list">
                    
                    <form action="UserController" method="get">
                    	<div class="delete_menu">
                        <select class="selectaction" name="action">
                        	<a href=""></a><option value="listuser">Action</option>
                            <option value="adduser">Add New User</option>
                        	<option value="edit">Edit</option>
                            <option value="delete">Delete</option>
                        </select>
                        <button class="btn_action" type="submit">Action</button>
                       
                        </div>
                        <div class="user_list_main">
                       
                        
                        	<table border="0px" class="user_table">
                            	<tr class="head_user">
                                	<th class="">
                                    
                                    </th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Role</th>

                                </tr>
                         	<c:forEach items="${userList}" var="user" >
                                <tr class="user_value">
  									<td class="check_name">
 				 					<input type="checkbox" name="userId" value="${user.adminId}"><span class="user_move">
  										</span></td>
  										<td><c:out value="${user.adminUser}"/></td>
                                    <td><c:out value="${user.adminPass}"/></td>
                                    <td>Administrator</td>
                                    
                                </tr>
                 			</c:forEach>
                            </table>
                        </div>
                        </form>
                        </div></a>
                    </div>
                  </div>
               </div>   
        </div>
        <!--END PAGE CONTENT -->

         <!-- RIGHT STRIP  SECTION -->
       	<%@ include file="admin_rightside.jsp" %>
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
