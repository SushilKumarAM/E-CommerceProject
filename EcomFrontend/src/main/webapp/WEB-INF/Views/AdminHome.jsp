<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Header.jsp" %>

<html>
<head>
<style>
body{
	background:white;
}
.card{
	box-shadow:0 4px 8px 0 rgba(0,0,0,0.6);
	transtion:0.4s;
	width:300px;
	height:320px;
	background:#fff;
	text-align:center;
	font-size:16px;
	float:left;
	margin:15px;
.card:hover{
	box-shadow:0 8px 16px 0 rgba(0,0,0,0.6);
	
}
</style>
</head>
<body>
<br><br><br><br><br>
 <c:forEach items="${listProducts}" var="product">
 
<div class ="container">
<!--  col-sm-2 col-md-6 col-lg-8 col-xl-10 -->
	<div class ="card">
	 <a href ="productDesc/${product.productId}" class="thumbnail">
	<img src="<c:url value="H:/Ecomerce Project/EcomFrontend/src/main/webapp/WEB-INF/resources/product/${product.productId}.jpeg"/>"  alt="productimg" style=height:220px;width:100%>
	</a>
	<div class ="container">
	<h4> Product Name : ${product.productName}</h4>
	<p>Product Price : Rs ${product.price}</p>
	
	</div>
	</div>

</div>

</c:forEach>
</body>
</html>