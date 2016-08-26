
<!DOCTYPE html>
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
                        <h1> Admin Dashboard </h1>
                    </div>
                </div>
                  <hr />
                  <div class="content_board">
                  	<p>Welcome to ShopCenter Admin DashBoard!!!</p>
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
