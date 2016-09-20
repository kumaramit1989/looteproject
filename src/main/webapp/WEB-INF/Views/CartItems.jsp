<%@include file="CommonHeader.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script>
  var prod = ${productdetails};
  angular.module('repeatSample', []).controller('repeatController', function($scope)
   {
                 $scope.products=prod;
                               
                
                   
    });
  
</script>
 
<div class="container" ng-app="repeatSample" ng-controller="repeatController">

<c:choose>
  <c:when test="${check}">
 	<table id="cart" class="table table-hover table-condensed">
		<tr>
			<th style="width: 50%">Product</th>
			<th style="width: 10%">Price</th>
			<th style="width: 8%">Quantity</th>
			<th style="width: 22%" class="text-center">Subtotal</th>
			<th style="width: 10%"></th>
		</tr>
		<tr>
		<form:form action="update" commandName="Cart" method="post">
			<td data-th="Product">
				<div class="row">
				<div class="col-sm-2 hidden-xs">
					<form:hidden path="cartId" ></form:hidden>
					</div>
					<div class="col-sm-2 hidden-xs">
						<img src="./resources/productimage/{{products.imgid}}.jpg"
							class="img-responsive" />
					</div>
					<div class="col-sm-8">
						<h4 class="nomargin"><form:label path="productName" value="{{products.productName}}">{{products.productName}}</form:label></h4>
						<p><form:label path="productdesc" readonly="true" value="{{products.productdesc}}">{{products.productdesc}}</form:label></p>
					</div>
				</div>
			</td>
			<td data-th="Price">Rs <form:label path="price" readonly="true" value="{{products.price}}">{{products.price}}</form:label></td>
			<td data-th="Quantity"><form:input path="quantity" class="form-control text-center"></form:input></td>
			<td data-th="Subtotal" class="text-center"><form:input path="total" readonly="true" class="form-control text-center"></form:input></td>
			<td class="actions" data-th="">
			 <input type="submit" class="btn btn-info" value="update Cart">
			</td>
			</form:form>
		</tr>

	</table>
  </c:when>
  
  <c:otherwise>
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
						<img src="./resources/productimage/{{prod.imgid}}.jpg"
							class="img-responsive" />
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
				<a data-toggle="tooltip" title="update" data-title="Update" class="btn btn-success btn-sm" href="fetchtoupdate?cartid={{prod.cartId}}"><i class="glyphicon glyphicon-pencil"></i></a>
				
				<a data-toggle="tooltip" title="delete" data-title="delete" class="btn btn-danger btn-sm" href="deletefromcart?cartid={{prod.cartId}}"><i class="fa fa-trash-o"></i></a>
			</td>
			</form:form>
		</tr>
		<tr>
			<td><a href="showallProduct" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
			<td colspan="2" class="hidden-xs"></td>
			<td class="hidden-xs text-center"><strong>Grand total ${sessionScope.grandtotal}</strong></td>
			<td><a href="showbillingdetails" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
		</tr> 

	</table>
	 </c:otherwise>
</c:choose>
</div>
<%@include file="CommonFooter.jsp" %>