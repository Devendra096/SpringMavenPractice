<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Electronix Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/style.css" />

<script type="text/javascript" src="bootstrap/js/boxOver.js"></script>
</head>
<body>
<div id="main_container">
 	<!-- Header -->
 	<%@ include file="sub/header.jsp" %>
    <!-- end header -->
  
  <div id="main_content">
    <!-- navbar start -->
    <%@ include file="sub/navbar.jsp" %>
     <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <!-- end navbar -->
   
    <!-- start of left content -->
    <%@ include file="sub/leftcontent.jsp" %>
    <!-- end of left content -->
    
    <div class="center_content">
      <div class="center_title_bar">Latest Products</div>
      <c:if test="${!empty productList}">
      <% 
      	int counter = 0;
      %>
       <c:forEach items="${productList}" var="product">
	      <div class="prod_box">
	        <div class="top_prod_box"></div>
	        <div class="center_prod_box">
	          <div class="product_title"><a href="details.html"> <c:out value="${product.proName}"></c:out> </a></div>
	          <div class="product_img"><a href="details.html"><img src="${baseURL}/img/${product.proImage}" alt="" border="0" /></a></div>
	          <div class="prod_price"> <span class="price"> <c:out value="${product.proPrice}"></c:out> $</span></div>
	        </div>
	        <div class="bottom_prod_box"></div>
	        <div class="prod_details_tab"> <a href="" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="bootstrap/images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="/bootstrap/images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="bootstrap/images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="details.jsp" class="prod_details">details</a> </div>
	      </div>
	      <% 
	      	counter += 1;
	      	if(counter == 6){
	      		break;
	      	}
	      %>
	    </c:forEach>
      </c:if>
      <c:if test="${empty productList}">
      	<div class="center_title_bar">Product Not Found Or Empty !!!</div>
      </c:if>
      
      <div class="center_title_bar">Recommended Products</div>
      
      <c:if test="${!empty recProduct}">
      <c:forEach items="${recProduct}" var="recproduct">
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="details.html"> <c:out value="${recproduct.proName}"></c:out> </a></div>
          <div class="product_img"><a href="details.html"><img src="${baseURL}/img/${recproduct.proImage}" alt="" border="0" /></a></div>
          <div class="prod_price"><span class="price"> <c:out value="${recproduct.proPrice}"></c:out> $</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="bootstrap/images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="bootstrap/images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="bootstrap/images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="details.jsp" class="prod_details">details</a> </div>
      </div>
      </c:forEach>
      </c:if>
    
    </div>
    <!-- end of center content -->
    
    <!-- start of right content -->
    <%@ include file="sub/rightcontent.jsp" %>
    <!-- end of right content -->
    
  </div>
  <!-- end of main content -->
  
  <!-- footer -->
  <div class="footer">
    <div class="left_footer"> <img src="bootstrap/images/footer_logo.png" alt="" width="170" height="49"/> </div>
    <div class="center_footer"> ShopNepal by Shuraj. All Rights Reserved 2016<br />
      <a href="http://csscreme.com"><img src="bootstrap/images/csscreme.jpg" alt="csscreme" border="0" /></a><br />
      <img src="bootstrap/images/payment.gif" alt="" /> </div>
    <div class="right_footer"> <a href="index.html">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="contact.html">contact us</a> </div>
  </div>
</div>
<!-- end of main_container -->
</body>
</html>
