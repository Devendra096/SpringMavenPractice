<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> --%>
<%! String urlimage = "http://localhost:8080/OnlineShopingProject/uploads/"; %>
<!DOCTYPE html>


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
                        <h1>Update product</h1>
                    </div>
                </div>
                  <hr />
                  <div class="content_board">
                    <div class="add_user">
                    <form action="/OnlineShopingProject/ProductController" method="post" class="form_add" enctype="multipart/form-data">
                    
                    <label>Title</label>
                     <input type="text" placeholder="Title" class="form_add_list form_fname" name="pro_name" value="${product.pro_name}" />
                     <font color="red"><!-- Error --></font>
                     <br/>
                     <label>Description</label>
                     <input type="text" placeholder="Description" class="form_add_list form_fname" name="pro_desc" value="${product.pro_desc}" />
                     <font color="red"><!-- Error --></font>
                     <br/>
                     <label>Availabilty</label>
                     <input type="text" placeholder="Availabilty" class="form_add_list form_fname" name="pro_availabity" value="${product.pro_availabity}"/>
                     <font color="red"><!-- Error --></font>
                     <br/>
                      <label>Warranty</label>
                     <input type="text" placeholder="Warranty" class="form_add_list form_fname" name="pro_warranty" value="${product.pro_warranty}"/>
                     <select name="date"><option>Year</option><option>month</option></select>
                     <font color="red"><!-- Error --></font>
                     <br/>
                      <label>Delivery</label>
                     <input type="text" placeholder="Delivery" class="form_add_list form_fname" name="pro_delivery" value="${product.pro_delivery}" />
                     <font color="red"><!-- Error --></font>
                     <br/>
                      <label>Categories</label>
                      <select class="form_add_list" name="pro_cat">
                     
                      	<option value=""></option>
                      </select>
					<label>manufacture</label>
					<select class="" name="pro_manu">
                      <option value=""></option>
                    
                      </select>
                     <br/>
                     <label class="image_text">Upload</label>
                     <input type="file"  class="form_add_list form_image" name="pro_image" value="${product.pro_image}" />
                    <font color="red"><!--  Error --> </font>
                     <br/>
                        
           <button class="btn text-muted text-center btn-success btn_add" type="submit" name="add_image" value="add_image">Add New Product</button>
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
