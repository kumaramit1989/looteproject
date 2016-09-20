<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
 <script src="resources/js/prefixfree.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<title>Lootle</title>
</head>
<body>
<header class="top-header"><!-- start of header area -->
 <div class="container-fluid"><!-- start of container area -->
  <div class="row">
          <div class="col-xs-2 header-logo">
                   <a href="index.jsp"><img src="resources/img/logo.png" class="img-responsive logo"/></a>    	
        </div>
		  <div class="col-xs-2 header-logo">
		  </div>
		   <div class="col-xs-2 header-logo">
		  </div>
		   <div class="col-xs-2 header-logo">
		  </div>
		   <div class="col-xs-2 header-logo">
		   <br><br><br>
				<b>   ${sessionScope.user} </b>
		  </div>
		   <div class="col-xs-2 header-logo">
		   <br>
		  &nbsp;&nbsp;&nbsp;&nbsp; ${sessionScope.count} items
		   <a href="showcart"><img src="resources/img/cart.gif" class="img-responsive logo"/></a>  
		  </div>
        
  </div>
   
  <nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="./index.jsp">Lootle.com</a>
    </div>
     <div class="navbar-header">
					     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
		</div>
		 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			    
    <ul class="nav navbar-nav" id="menu">
      <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
       <li><a href="showallProduct"><span class="glyphicon glyphicon-th-large"></span> All Products</a></li>
      <li><a href="ContactUs"><span class="glyphicon glyphicon-phone-alt"></span> Contact us</a></li>
      <li><a href="AboutUs"><span class="glyphicon glyphicon-list-alt"></span> About us</a></li>
       <li><a href="checkout">checkout test link</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
       <c:if test="${not sessionScope.UserLoggedIn}">
    <li><a href="userRegistrationview"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
   	 <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
  </c:if>
   <c:if test="${sessionScope.UserLoggedIn}">  
      <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </c:if>
      <li></li>
    </ul>
    </div>
  </div>
</nav>
 </div><!-- end of container area -->
</header><!-- end of header area -->
