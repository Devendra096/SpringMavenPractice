<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                        <h1>Add New product</h1>
                    </div>
                </div>
                  <hr />
                  <div class="content_board">
                    <div class="add_user">
                    <form:form action="addproduct.html" method="post" class="form_add" enctype="multipart/form-data" commandName="productList">
                    
                    <form:label path="proName">Title</form:label>
                    <form:input placeholder="Title" class="form_add_list form_fname" path="proName" value="${productList.proName}" />
                     
                     <br/>
                     <form:label path="proDesc">Description</form:label>
                     <form:input type="text" placeholder="Description" class="form_add_list form_fname" path="proDesc" value="${productList.proDesc}" />
                    
                     <br/>
                     <form:label path="proAvailabity">Availabilty</form:label>
                     <form:input type="text" placeholder="Availabilty" class="form_add_list form_fname" path="proAvailabity" value="${productList.proAvailabity}" />
                   
                     <br/>
                     <form:label path="proWarranty">Warranty</form:label>
                     <form:input type="text" placeholder="Warranty" class="form_add_list form_fname" path="proWarranty" value="${productList.proWarranty}"/>
                     
                     <br/>
                      <form:label path="proDelivery">Delivery</form:label>
                     <form:input type="text" placeholder="Delivery" class="form_add_list form_fname" path="proDelivery" value="${productList.proDelivery}" />
                     
                     <br/>
                      <form:label path="proPrice">Price</form:label>
                     <form:input type="text" placeholder="price" class="form_add_list form_fname" path="proPrice" value="${productList.proPrice}" />
                     
                     <br/>
                      <form:label path="proCat">Categories</form:label>
                      <form:select path="proCat" class="form_add_list">
                      	<c:forEach items="${categories}" var="cat">
                      		<form:option value="${cat.catId}">${cat.catName}</form:option>
                      	</c:forEach>
                      </form:select>
                      
					<form:label path="proManu">manufacture</form:label>
					 <form:select path="proManu"  class="form_add_list">
						 <c:forEach items="${manufacture}" var="manu">
							 <form:option value="${manu.manuId}">${manu.manuName}</form:option>
						 </c:forEach>
                      </form:select>
                     <br/>
                     <label class="image_text">Upload</label>
                     <input type="file"  class="form_add_list form_image" name="file" />
                     <br/>
                        
           <button class="btn text-muted text-center btn-success btn_add" type="submit">Add New Product</button>
            </form:form>
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
