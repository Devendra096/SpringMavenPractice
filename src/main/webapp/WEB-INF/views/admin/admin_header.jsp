  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <div id="top">

            <nav class="navbar navbar-inverse navbar-fixed-top " style="padding-top: 10px;">
                
                <!-- LOGO SECTION -->
                <header class="navbar-header">

                    <a href="index.html" class="navbar-brand">
                    <img src="assets/img/logo.png" alt="" />
                        
                        </a>
                </header>
                <!-- END LOGO SECTION -->
                <ul class="nav navbar-top-links navbar-right">

                    <!--ADMIN SETTINGS SECTIONS -->

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                           Welcome,
                           <c:forEach items="${admin}" var="ad">
                           		<c:out value="${ad.adminUser}"></c:out>
                           </c:forEach>
                        </a>

                        <ul class="dropdown-menu dropdown-user">   
                            <li><a href="Logout.html"> Logout </a>
                            </li>
                        </ul>

                    </li>
                    <!--END ADMIN SETTINGS -->
                </ul>

            </nav>

        </div>