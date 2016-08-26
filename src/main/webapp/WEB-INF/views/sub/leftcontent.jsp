<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="left_content">
      <div class="title_box">Categories</div>
      <ul class="left_menu">
      <c:forEach items="${categoriesList}" var="categories">
      <c:if test="${categories.catId % 2 != 0}">
        <li class="odd">
        	<a href="#"> <c:out value="${categories.catName}"></c:out> </a>
        </li>
       </c:if>
       <c:if test="${categories.catId % 2 == 0}">
	    <li class="even">
	    	<a href="#"> <c:out value="${categories.catName}"></c:out> </a>
	    </li>
	    </c:if>
	</c:forEach>
      </ul>
      <div class="title_box">Special Products</div>
      <c:if test="${!empty newproduct }">
      <c:forEach items="${newproduct}" var="newproduct">
      <div class="border_box">
        <div class="product_title"><a href="details.html"> <c:out value="${newproduct.proName}"></c:out> </a></div>
        <div class="product_img"><a href="details.html"><img src="${baseURL}/img/${newproduct.proImage}" alt="" border="0" /></a></div>
        <div class="prod_price"> <span class="price"><c:out value="${newproduct.proPrice}"></c:out>$</span></div>
      </div>
      </c:forEach>
      </c:if>
      <div class="title_box">Newsletter</div>
      <div class="border_box">
        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <a href="#" class="join">join</a> </div>
      <div class="banner_adds"> <a href="#"><img src="bootstrap/images/bann2.jpg" alt="" border="0" /></a> </div>
    </div>