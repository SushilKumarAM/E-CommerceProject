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
	height:450px;
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

<form action="perform_login" method="post">
    <p class="h4 text-center mb-4">Sign in</p>
    <label class="grey-text">Username</label>
    <input type="text" name ="username" placeholder="Username" class="form-control">
    <br>
    <label class="grey-text">Password</label>
    <input type="password" name="password" placeholder="Password" class="form-control">
    <div class="text-center mt-4">
        <button class="btn btn-indigo" type="submit">Login</button>
    </div>
    <br>
    <label class="grey-text">New to this site?<a  href=<c:url value="/register"/>>Click here</a></label>
</form>
    </div>
    <!-- Card body -->

</div>
<!-- Card -->
    </div>
            
</body>

</html>