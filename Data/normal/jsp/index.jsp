<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#padfora{
text-decoration: none;}
#padfora li {
	padding-left:5px;
}
</style>
</head>
<body style="background:#c1f1ec;">
<jsp:include page="header.jsp"></jsp:include>
<c:if test="${ch }">
<jsp:include page="category_menu.jsp"></jsp:include>
</c:if>


${msg }${msg1}
${as}
${deletesupplierexecption}
<ul class="nav nav-tabs">
  <c:forEach items="${list}" var="cat">
  <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">${cat.name}
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
    <c:forEach items="${cat.product}" var="pro">
       <a  id="padfora" href="product${pro.id}"><li>${pro.name}</li></a>
       <li class="divider"></li>
     </c:forEach>
    </ul> 
  </li></c:forEach></ul>
  <c:if test="${ch }">
  <jsp:include page="category_menu.jsp"></jsp:include>
  <jsp:include page="home.jsp"></jsp:include>
</c:if>
  <c:if test="${showmycart}">
<jsp:include page="mycartfull.jsp"></jsp:include></c:if>
      <c:if test="${showitemaddedtocart}">
<jsp:include page="mycart.jsp"></jsp:include>
</c:if>
    <c:if test="${showallsupplier}">
<jsp:include page="ShowallSupplier.jsp"></jsp:include>
</c:if>
  <c:if test="${editcat}">
<jsp:include page="editCategory.jsp"></jsp:include>
</c:if>
<c:if test="${showpro}">
<jsp:include page="products.jsp"></jsp:include>
</c:if>
<c:if test="${showpage_showallCategories}">
<jsp:include page="showallCategories.jsp"></jsp:include>
</c:if>
<c:if test="${showsingleproduct}">
<jsp:include page="ViewProduct.jsp"></jsp:include>
</c:if>
<c:if test="${check1 }">
<jsp:include page="login.jsp"></jsp:include>
</c:if>
<c:if test="${check2 }">
<jsp:include page="welcome.jsp"></jsp:include>
</c:if>
<c:if test="${check3}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>
<c:if test="${showeditproductpage}">
<jsp:include page="./admin/editproduct.jsp"></jsp:include>
</c:if>
<c:if test="${showallproducts}">
<jsp:include page="./admin/showallproduct.jsp"></jsp:include>
</c:if>
	<c:if test="${check4 }">
<jsp:include page="register.jsp"></jsp:include>
</c:if>
<c:if test="${showcat}">
<jsp:include page="category.jsp"></jsp:include>
</c:if>
<c:if test="${home}">
<jsp:include page="home.jsp"></jsp:include>
</c:if>
<c:if test="${product1}">
<jsp:include page="products.jsp"></jsp:include>
</c:if>
<c:if test="${checkreg }">
<jsp:include page="register.jsp"></jsp:include>
</c:if>
<c:if test="${supply }">
<jsp:include page="supplier.jsp"></jsp:include>
</c:if>
<c:if test="${userregisterd}">
<jsp:include page="welcome.jsp"></jsp:include>
</c:if>
<c:if test="${editsupplier}">
<jsp:include page="editSupplier.jsp"></jsp:include>
</c:if>

<c:if test="${showmycartorderpage}">
<jsp:include page="./user/showmycartorder.jsp"></jsp:include>
</c:if>
<c:if test="${exceptionhappened}">
<jsp:include page="error.jsp"></jsp:include>
</c:if>
<c:if test="${ not empty serachlist || not empty message}">
<jsp:include page="search.jsp"></jsp:include>
</c:if>
<c:if test="${aboutus}">
<jsp:include page="Aboutus.jsp"></jsp:include>
</c:if>
<c:if test="${denied}">
<jsp:include page="acessdenied.jsp"></jsp:include>
</c:if>
<br>
<br>
<br>
<br>
<jsp:include page="navbarbottom.jsp" ></jsp:include>
</body>
</html>