<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
  </div>
   
  <nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="./index.jsp">Lootle.com admin panel</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Manage Orders <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Product"><span class="glyphicon glyphicon-shopping-cart"></span>Manage order</a></li>
          <li><a href="Product"><span class="glyphicon glyphicon-shopping-cart"></span>Manage Shipments</a></li>
          <li><a href="Product"><span class="glyphicon glyphicon-list"></span>Manage Invoice</a></li>
        </ul>
      </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-tasks"></span> Manage Inventory <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="Category"><span class="glyphicon glyphicon-list-alt"></span> Manage category</a></li>
          <li><a href="Product"><span class="glyphicon glyphicon-list-alt"></span> Manage Products</a></li>
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>Manage Users <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Product"><span class="glyphicon glyphicon-user"></span> Manage Users</a></li>
          <li><a href="Product"><span class="glyphicon glyphicon-user"></span> Search Users</a></li>
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Manage Supplier<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Supplierview"><span class="glyphicon glyphicon-user"></span> Manage Supplier</a></li>
          <li><a href="Product"><span class="glyphicon glyphicon-user"></span> Search Supplier</a></li>
        </ul>
      </li>
      
      <li><a href="ContactUs"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
      
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li></li>
    </ul>
  </div>
</nav>
 </div><!-- end of container area -->
</header><!-- end of header area -->
