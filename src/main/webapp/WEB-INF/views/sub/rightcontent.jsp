
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="right_content">
      <div class="shopping_cart">
        <div class="cart_title">Shopping cart</div>
        <div class="cart_details"> 3 items <br />
          <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
        <div class="cart_icon"><a href="http://all-free-download.com/free-website-templates/" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="bootstrap/images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
      </div>
      <div class="title_box">What’s new</div>
      <c:if test="${!empty newproduct }">
      <c:forEach items="${newproduct}" var="newproduct">
      <div class="border_box">
        <div class="product_title"><a href="details.html"> <c:out value="${newproduct.proName}"></c:out> </a></div>
        <div class="product_img"><a href="details.html"><img src="${baseURL}/img/${newproduct.proImage}" alt="" border="0" /></a></div>
        <div class="prod_price"> <span class="price"><c:out value="${newproduct.proPrice}"></c:out>$</span></div>
      </div>
      </c:forEach>
      </c:if>
      <div class="title_box">Manufacturers</div>
      <ul class="left_menu">
     <c:forEach items="${manufactureList}" var="manufacture">
      <c:if test="${manufacture.manuId % 2 != 0}">
        <li class="odd">
        	<a href=""> <c:out value="${manufacture.manuName}"></c:out> </a>
        </li>
       </c:if>
       <c:if test="${manufacture.manuId % 2 == 0}">
        	<li class="even">
        		<a href=""> <c:out value="${manufacture.manuName}"></c:out> </a>
        	</li>
        </c:if>
     </c:forEach>
      </ul>
      <div class="banner_adds"> <a href="#"><img src="bootstrap/images/bann1.jpg" alt="" border="0" /></a> </div>
    </div>