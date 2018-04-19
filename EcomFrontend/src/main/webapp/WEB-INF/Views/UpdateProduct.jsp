<%@ include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<br><br><br><br>
<h3 align="center">Product Page</h3>

<br/><br/><br/>
<form:form action="updateProduct" modelAttribute="product" enctype="multipart/form-data">
<table align="center">
	<tr>
		<td colspan="2"><center>Product Form</center></td>
	</tr>
   <tr>
   		<td>Product Name</td>
   		<td><form:input path="productName"/></td>
   </tr>
   <tr>
   		<td>Price</td>
   		<td><form:input path="price"/></td>
   </tr>
   <tr>
   		<td>stock</td>
   		<td><form:input path="stock"/></td>
   </tr>
   <tr>
   		<td>Category</td>
   		<td><form:select path ="categoryId">
   		    <form:option value="0" label="---Select List---"></form:option>
   		    <form:options items="${categoryList }"/>
   		    </form:select>
   		</td>
   </tr>
   <tr>
   		<td>Supplier</td>
   		<td><form:select path="supplierId">
   		<form:option value="0" label="---Select List---"></form:option>
   		    <form:options items="${supplierList }"/>
   		    </form:select>
   		</td>
   </tr>
   <tr>
   		<td>Product Description</td>
   		<td><form:input path="productDesc"/></td>
   </tr>
   <tr>
        <td>Product Image</td>
        <td><form:input type="file" path="pimage"/>
        </td>   
   </tr>
   
   <tr>
   		<td colspan="2"><center><input type="submit" value="Update"/></center></td>
   </tr>
   		
</table>
</form:form>

<font color="red"><h3>${errorInfo }</h3></font>

<table align="center">
  <tr>
     <td>Product ID</td>
     <td>Product Name</td>
     <td>Category ID</td>
     <td>Supplier ID</td>
     <td>Price</td>
     <td>Stock</td>
     <td>Operation</td>
  </tr>   
<c:forEach items="${listProducts}" var="product">
    <tr>
    <td> ${product.productId}</td>
    <td> ${product.productName}</td>
    <td> ${product.categoryId}</td>
    <td> ${product.supplierId}</td>
    <td> ${product.price}</td>
    <td> ${product.stock}</td>
    
    <td>
    <img src="<c:url value="H:/Ecomerce Project/EcomFrontend/src/main/webapp/WEB-INF/resources/product/${product.productId}.jpeg"/>" width="50" height="50" />
    </td>
    
    
    <td>
        <a href="<c:url value='/editProduct/${product.productId}'/>">Edit</a>/
        <a href="<c:url value='/deleteProduct/${product.productId}'/>">Delete</a>
    </td>
    </tr>

</c:forEach>
</table>