<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%! String urlimage = "http://localhost:8080/OnlineShopingProjectMaven/uploads/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8" />
    <title>Talk2Me | Media </title>
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
       <%@ include file="admin_header.jsp"%>
         <!-- END HEADER SECTION -->



        <!-- MENU SECTION -->
     <%@ include file="admin_leftside.jsp"%>
        <!--END MENU SECTION -->



        <!--PAGE CONTENT -->
        <div id="content">
             
            <div class="inner" style="min-height: 700px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1> Media Library </h1>
                    </div>
                </div>
                  <hr />
                  <div class="content_board_media">
                    	<div class="content_search_box">
                        	<ul>
                           <li>
                             	 <form action="" method="post" class="form_action_media_search">
                    				<input type="text" class="search_image" name="search_image" placeholder="Search Image" />
                        			<button type="submit" class="btn_image"  name="btn_search">Search</button>
                    			</form>
                                </li>
                          		<li>
                                <form action="actionitems.html" method="post" class="form_action_media">
                                	<select class="select_item" name="action">
                                    	<option value="listproduct">Action Items</option>
                                        <option value="addproduct">Add New</option>
                                        <option value="delete">Delete</option>
                                        <option value="editproduct">Edit</option> 
                                    </select>
                                    <button type="submit" class="btn_select" >Select</button>
                                </li>   
                            </ul>
                        </div>
                        
                        <div class="content_image">
                        <c:if test="${!empty mediaList }">
                        	<ul>
                           <c:forEach items="${mediaList}" var="media">
                            	<li class="image_list">
                                <img src="${baseURL}/img/${media.proImage}" width="127px" height="127px">
                                <div class="select_image">
                                <input type="checkbox" value="${media.proId}" name="proId" class="check_image">
                                </div>
                                </li>
                             
							</c:forEach>
                                </form>
                             
                            </ul>
                          </c:if>
                          <c:if test="${empty mediaList }">
                          		<h3><% out.println("Media List is Empty!!!!"); %></h3>
                          </c:if>
                        </div>
                  </div>
               </div>   
        </div>
        <!--END PAGE CONTENT -->

         <!-- RIGHT STRIP  SECTION -->
       <%@ include file="admin_rightside.jsp"%>
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
