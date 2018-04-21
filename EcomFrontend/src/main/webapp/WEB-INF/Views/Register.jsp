<%@ page language="java" contentType="text/html"%>
<%@ include file="Header.jsp" %>
<br><br><br><br><br><br>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
   
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/css/mdb.min.css" rel="stylesheet">
<style>
body{
	background:white;
}

.card{
	box-shadow:0 4px 8px 0 rgba(0,0,0,0.6);
	transtion:0.4s;
	width:1000px;
	height:600px;
	background:#fff;
	text-align:center;
	font-size:16px;
	float:none;
	margin: auto;
.card:hover{
	box-shadow:0 8px 16px 0 rgba(0,0,0,0.6);
	
}

</style>


</head>

<body>

<div class="container">
<!-- Card -->
<div class="card col-11">

    <!-- Card body -->
    <div class="card-body">

<!-- Default form register -->
<form>
    <p class="h4 text-center mb-4">Sign up</p>

    <!-- Default input name -->
    <label for="defaultFormRegisterNameEx" class="grey-text">Your name</label>
    <input type="text" id="" placeholder="Username" class="form-control">
    
    <br>

    <!-- Default input email -->
    <label for="defaultFormRegisterEmailEx" class="grey-text">Your email</label>
    <input type="email" id="" placeholder="Email id" class="form-control">
    
    <br>


    <!-- Default input password -->
    <label for="defaultFormRegisterPasswordEx" class="grey-text">Your password</label>
    <input type="password" id="" placeholder="Password" class="form-control">
	
	<br>
	
	<label for="defaultFormRegisterAddressEx" class="grey-text">Your address</label>
    <input type="text" id="" placeholder="Address with pincode" class="form-control">
    
	
    <div class="text-center mt-4">
        <button class="btn btn-unique" type="submit">Register</button>
    </div>
    
    <br>
    <label class="grey-text">Not new?<a  href=<c:url value="/login"/>>Click here</a></label>
</form>
<!-- Default form register -->
                      
    </div>
    <!-- Card body -->

</div>
<!-- Card -->
    </div>
            
</body>

</html>