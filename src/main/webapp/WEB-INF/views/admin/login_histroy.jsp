
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
                        <h1> Login Histroy </h1>
                    </div>
                </div>
                  <hr />
                  <div class="content_board">
                    <div class="search_box">
                    
                    </div>
                    <div class="user_list">
                    
                    <form action="login_histroy.php" method="post">
                    	<div class="delete_menu">
                        <select class="selectaction" name="action">
                         <option value="delete">Delete</option>
                         <option value="delAll">Delete All</option>
                        </select>
                        	<button class="btn_action" type="submit" name="delete" value="delete">Action</button>
                        </div>
                        <div class="user_list_main">
                       
                        
                        	<table border="0px" class="user_table">
                            	<tr class="head_user">
                                	<th class="username">
                                    <input type="checkbox" ><span class="user_move">Username<span>
                                    </th>
                                    <th>Name</th>
                                    <th>Added_date</th>
                                    <th>Action</th>
                                   
                                    
                                </tr>
                                 
                                <tr class="user_value">
  									<td class="check_name">
 				 <input type="checkbox" name="check_id" value=""><span class="user_move">
 										 shuraj_shampang
  										</span></td>
                                    <td>Shuraj</td>
                                    <td>04/08/2016</td>
                                    <td>Login</td>
                                    
                                    
                                </tr><?php } ?>
									
                            </table>
                        </div>
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
