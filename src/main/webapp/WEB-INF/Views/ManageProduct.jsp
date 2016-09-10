<%@include file="AdminHeader.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
var category=${catlist}
var supplier=${suplist}

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) 
{
    $scope.catlist= category;
    $scope.suplist=supplier;
});
</script>
<div class="container">
<div class="row centered-form">
	<div class="col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 align="center" class="panel-title">Add Supplier</h3>
			</div>

			<div class="panel-body" ng-app="myApp">
			
				<sf:form action="addProduct" method="post" commandName="Product">
					<div class="row">
						<div class="col-xs-2">
							<div class="form-group">
								<sf:label path="productId">Product Id</sf:label>
								<sf:input path="productId" readonly="true"
									class="form-control input-sm"></sf:input>
							</div>
						</div>
						<div class="col-xs-2">
							<div class="form-group">
								<sf:label path="productName">product Name</sf:label>
								<sf:input path="productName" class="form-control input-sm"
									placeholder="Product Name"></sf:input>
							</div>
						</div>

						<div class="form-group col-xs-2">
							<sf:label path="productDescription">Product Description</sf:label>
							<sf:input path="productDescription" class="form-control input-sm"
								placeholder="Product Description"></sf:input>
						</div>

						<div class="form-group col-xs-2">
							<sf:label path="categoryId">Category</sf:label>
							<sf:select path="categoryId" class="form-control input-sm" ng-controller="myCtrl">
								<option ng-repeat="cat in catlist" value="{{cat.categoryId}}">{{cat.categoryName}}</option>
							 </</sf:select>
						</div>
						<div class="form-group col-xs-2">
						<sf:label path="supplierId">Supplier</sf:label>
						ghyjgjjugkuh
						</div>
						<div class="col-xs-2">
							<div class="form-group">
								<br> <input type="submit" value="Add"
									class="btn btn-info btn-block">
							</div>
						</div>
					</div>
				</sf:form>

			</div>
		</div>
	</div>
</div>
</div>
<%@include file="CommonFooter.jsp"%>