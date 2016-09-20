<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<title>Order Confirmation</title>
<script>
  var prod = ${productdetails};
  angular.module('repeatSample', []).controller('repeatController', function($scope)
   {
                 $scope.products=prod;     
                   
    });
  
</script>
</head>
<body>
<div class="container">
<br><br><br>
    <div class="row" ng-app="repeatSample" ng-controller="repeatController">
       <table id="cart" class="table table-hover table-condensed">
		<tr>
			<th style="width: 50%">Product</th>
			<th style="width: 10%">Price</th>
			<th style="width: 8%">Quantity</th>
			<th style="width: 22%" class="text-center">Subtotal</th>
			<th style="width: 10%"></th>
		</tr>
		<tr ng-repeat="prod in products">
		<form:form action="update" commandName="Cart" method="post">
			<td data-th="Product">
				<div class="row">
					<div class="col-sm-2 hidden-xs">
					
					</div>
					<div class="col-sm-10">
						<h4 class="nomargin"><form:label path="productName" readonly="true" value="{{prod.productName}}">{{prod.productName}}</form:label></h4>
						<p><form:label path="productdesc" readonly="true" value="{{prod.productdesc}}">{{prod.productdesc}}</form:label></p>
					</div>
				</div>
			</td>
			<td data-th="Price">Rs <form:label path="price" readonly="true" value="{{prod.price}}">{{prod.price}}</form:label></td>
			<td data-th="Quantity"><form:label path="total"></>{{prod.quantity}}</form:label></td>
			<td data-th="Subtotal" class="text-center"><form:label path="total">{{prod.total}}</form:label></td>
			<td class="actions" data-th="">
			<!--  	<a data-toggle="tooltip" title="update" data-title="Update" class="btn btn-success btn-sm" href="fetchtoupdate?cartid={{prod.cartId}}"><i class="glyphicon glyphicon-pencil"></i></a>
				
				<a data-toggle="tooltip" title="delete" data-title="delete" class="btn btn-danger btn-sm" href="deletefromcart?cartid={{prod.cartId}}"><i class="fa fa-trash-o"></i></a> -->
			</td>
			</form:form>
		</tr>
		<tr>
		<!-- <td><a href="showallProduct" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>  -->
			<td colspan="2" class="hidden-xs"></td>
			<td class="hidden-xs text-center"><strong>Grand total ${sessionScope.grandtotal}</strong></td>
			<td><a href="checkout" class="btn btn-success btn-block">Pay Now <i class="fa fa-angle-right"></i></a></td> 
		</tr> 

	</table>
    </div>
    </div>
</body>
</html>