<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Header.jsp" %>

<br>
<br>
<br>
<br>
<div class="container">

    <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">

<table align="center">
  <tr>
     <td>Product ID</td>
     <td>Product Name</td>
     <td>Quantity</td>
     <td>Price</td>
     <td>Total Price</td>
     <td>Operation</td>
  </tr>   
<%-- <c:forEach items="${cartItems}" var="cartItem">
 --%>    <tr>
    <td> ${cartItem.productId}</td>
    <td> ${cartItem.productName}</td>
    <td><input type="text" value="${cartItem.quantity}" name="quantity"/></td>
    <td> ${cartItem.price}</td>
    <td> ${cartItem.price*cartItem.quantity}</td>
   
    
    <td>
       <input type="submit" value="Update" class="btn btn-success btn-block"/>
        <a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class ="btn btn-danger btn-block">Delete</a>/
    </td>
    
    </tr>


	<tr>
		<td colspan="4">Total Amount</td>
		<td colspan="2">${totalAmount}</td>	
	</tr>
<%-- </c:forEach>	
 --%>	<tr>
		<td colspan="4"><a href="<c:url value="/UserHome/"/>" class ="btn btn-danger btn-block">Continue Shopping</a></td>
		<td colspan="2"><a href="<c:url value="/Checkout/"/>" class ="btn btn-danger btn-block">Check Out</a></td>
	
	</tr>
	


</table>
</form>


</div>