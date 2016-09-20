<%@include file="AdminHeader.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
var category=${catlist}
var supplier=${suplist}
var productlist=${Productlist}

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) 
{
    $scope.catlist= category;
    $scope.suplist=supplier;
    $scope.prodlist=productlist;
   
}
);

</script>
<div class="container"  ng-app="myApp">
<c:choose>
  <c:when test="${check}">
<div class="row centered-form">
	<div class="col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 align="center" class="panel-title">Add Product</h3>
			</div>

			<div class="panel-body">
			<sf:form action="addproduct" method="post" commandName="Product" enctype="multipart/form-data">
				<div class="row">
				<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productId">Product Id</sf:label>
								<sf:input path="productId" readonly="true"	class="form-control input-sm"></sf:input>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productName">product Name</sf:label>
								<sf:input path="productName" class="form-control input-sm" placeholder="Product Name"></sf:input>
							</div>
						</div>
							<div class="form-group col-xs-4">
							<sf:label path="productDescription">Product Description</sf:label>
							<sf:input path="productDescription" class="form-control input-sm"
								placeholder="Product Description"></sf:input>
						</div>
				
				</div>
				<div class="row">
					
						<div class="form-group col-xs-4" ng-controller="myCtrl">
							<sf:label path="categoryId">Category</sf:label>
							<sf:select path="categoryId" class="form-control input-sm">
								<option ng-repeat="cat in catlist" value="{{cat.categoryId}}">{{cat.categoryName}}</option>
							 </sf:select>
						</div>
						
						<div class="form-group col-xs-4" ng-controller="myCtrl">
						<sf:label path="supplierId">Supplier</sf:label>
						<sf:select path="supplierId" class="form-control input-sm">
								<option ng-repeat="sup in suplist" value="{{sup.supplierId}}">{{sup.supplierName}}</option>
							 </sf:select>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="brandName">Brand</sf:label>
								<sf:input path="brandName" class="form-control input-sm" placeholder="Brand Name"></sf:input>
							</div>
						</div>
						
				</div>
				<div class="row">
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productStock">Product Stock</sf:label>
								<sf:input path="productStock" class="form-control input-sm"></sf:input>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productPrice">Product Price</sf:label>
								<sf:input path="productPrice" class="form-control input-sm"></sf:input>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="prodImage">Product Image</sf:label>				
						<sf:input type="file" path="prodImage"/>
							</div>
						</div>
				</div>
				<div class="row">
				<div class="col-xs-4">
				</div>
					<div class="col-xs-4">
						<input type="submit" value="Add" class="btn btn-success btn-block">
					</div>
					<div class="col-xs-4">
				</div>
				</div>
				</sf:form>
			
			</div>
		</div>
	</div>
	</div>
	</c:when>
  <c:otherwise>
  <div class="row centered-form">
	<div class="col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 align="center" class="panel-title">Update Product</h3>
			</div>

			<div class="panel-body">
			<sf:form action="updateProduct" method="post" modelAttribute="Product" enctype="multipart/form-data">
				<div class="row">
				<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productId">Product Id</sf:label>
								<sf:input path="productId" readonly="true"
									class="form-control input-sm"></sf:input>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productName">product Name</sf:label>
								<sf:input path="productName" class="form-control input-sm" placeholder="Product Name"></sf:input>
							</div>
						</div>
							<div class="form-group col-xs-4">
							<sf:label path="productDescription">Product Description</sf:label>
							<sf:input path="productDescription" class="form-control input-sm"
								placeholder="Product Description"></sf:input>
						</div>
				
				</div>
				<div class="row">
					
						<div class="form-group col-xs-4" ng-controller="myCtrl">
							<sf:label path="categoryId">Category</sf:label>
							<sf:select path="categoryId" class="form-control input-sm">
								<option ng-repeat="cat in catlist" value="{{cat.categoryId}}">{{cat.categoryName}}</option>
							 </sf:select>
						</div>
						
						<div class="form-group col-xs-4" ng-controller="myCtrl">
						<sf:label path="supplierId">Supplier</sf:label>
						<sf:select path="supplierId" class="form-control input-sm">
								<option ng-repeat="sup in suplist" value="{{sup.supplierId}}">{{sup.supplierName}}</option>
							 </sf:select>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="brandName">Brand</sf:label>
								<sf:input path="brandName" class="form-control input-sm" placeholder="Brand Name"></sf:input>
							</div>
						</div>
						
				</div>
				<div class="row">
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productStock">Product Stock</sf:label>
								<sf:input path="productStock" class="form-control input-sm"></sf:input>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="productPrice">Product Price</sf:label>
								<sf:input path="productPrice" class="form-control input-sm"></sf:input>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="form-group">
								<sf:label path="prodImage">Product Image</sf:label>				
						<sf:input type="file" path="prodImage"/>
							</div>
						</div>
					</div>
					<div class="row">
				<div class="col-xs-4">
				</div>
					<div class="col-xs-4">
						<input type="submit" value="Update" class="btn btn-success btn-block">
					</div>
					<div class="col-xs-4">
				</div>
				</div>
								
				</sf:form>
			
			</div>
		</div>
	</div>
	</div>
  </c:otherwise>
  </c:choose>

<div ng-controller="myCtrl">
		<div class="col-md-12">
			<h4 align="center">Manage Products</h4>
			<div id="custom-search-input">
				<div class="input-group col-md-12">
					<input type="text" class="search-query form-control" placeholder="Search" ng-model="seachproduct" /></span>
				</div>
			</div>

			<div class="table-responsive">
				<table id="mytable" class="table table-bordred table-striped table-hover">
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Category Id</th>
					<th>Supplier id</th>
					<th>Brand Name</th>
					<th>Product Price</th>
					<th>Stock</th>
					<th>Delete Product</th>
					<th>Update Product</th>
					</tr>
			<tr class="success"	ng-repeat="prod in prodlist|filter:seachproduct">
						<td>{{prod.productId}}</td>
						<td>{{prod.productName}}</td>
						<td>{{prod.productDescription}}</td>
						<td>{{prod.categoryId}}</td>
						<td>{{prod.supplierId}}</td>
						<td>{{prod.brandName}}</td>
						<td>{{prod.productPrice}}</td>
						<td>{{prod.productStock}}</td>
						<td><img src="./resources/productimage/{{prod.productId}}.jpg" height="50px" width="50px" /></td>
						<td><p data-placement="top" data-toggle="tooltip" title="Edit"><a data-title="Edit" class="btn btn-success btn-xs" href="fetchproducttoupdate?prodid={{prod.productId}}"> <span class="glyphicon glyphicon-pencil"></span></span></a></td>
						
					</tr>
				</table>
			</div>
		</div>
	</div>
 
</div>
<%@include file="CommonFooter.jsp"%>