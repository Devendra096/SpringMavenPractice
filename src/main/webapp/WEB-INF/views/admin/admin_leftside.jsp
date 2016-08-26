<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="left" >
            <div class="media user-media well-small">
                <a class="user-link" href="#">
                    <img class="media-object img-thumbnail user-img" alt="User Picture" src="assets/img/user.jpg"  width="48px" height="48px"/>
                </a>
                <br />
                <div class="media-body">
                    <h5 class="media-heading">  
                    <c:forEach items="${admin}" var="ad">
                           		<c:out value="${ad.adminUser}"></c:out>
                           </c:forEach> 
                     </h5>
                    <ul class="list-unstyled user-info">
                        
                        <li>
                             <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online
                           
                        </li>
                       
                    </ul>
                </div>
                <br />
            </div>

            <ul id="menu" class="collapse">

                <li class="panel active">
                    <a href="admindashboard.html" >
                        Dashboard
                    </a>                   
                </li>
                  <li><a href="media.html"> Media </a></li>    

                <li><a href="user.html"> User Management </a></li>
				<li><a href=""> Login Histroy </a></li>
            </ul>

        </div>
