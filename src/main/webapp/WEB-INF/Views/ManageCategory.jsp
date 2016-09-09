<%@include file="AdminHeader.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<div class="container">
 
  <c:choose>
  <c:when test="${check}">
 <div class="row centered-form">
		<div
			class="col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 align="center" class="panel-title">Add Category</h3>
				</div>
		
					<div class="panel-body">

					<sf:form action="addCategory" method="post" commandName="Category">
						<div class="row">
							<div class="col-xs-3">
								<div class="form-group">
									<sf:label path="categoryId">Category Id</sf:label>
									<sf:input readonly="true" path="categoryId"	class="form-control input-sm"></sf:input>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="form-group">
									<sf:label path="categoryName">Category</sf:label>
									<sf:input path="categoryName" class="form-control input-sm"	placeholder="Category name"></sf:input>
								</div>
							</div>
					
							<div class="form-group col-xs-3">
								<sf:label path="categoryDecs">Category Description</sf:label>
								<sf:input path="categoryDecs" class="form-control input-sm"	placeholder="category Description"></sf:input>
							</div>
							<div class="col-xs-3">
								<div class="form-group">
									<br>
									<input type="submit" value="Add" class="btn btn-info btn-block">
								</div>
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
					<h3 align="center" class="panel-title">Update Category</h3>
				</div>
		
					<div class="panel-body">

					<sf:form action="updateCategory" method="post" commandName="Category">
						<div class="row">
							<div class="col-xs-3">
								<div class="form-group">
									<sf:label path="categoryId">Category Id</sf:label>
									<sf:input readonly="true" path="categoryId"	class="form-control input-sm"></sf:input>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="form-group">
									<sf:label path="categoryName">Category</sf:label>
									<sf:input path="categoryName" class="form-control input-sm"	placeholder="Update Category name"></sf:input>
								</div>
							</div>
						
							<div class="form-group col-xs-3">
								<sf:label path="categoryDecs">Category Description</sf:label>
								<sf:input path="categoryDecs" class="form-control input-sm"	placeholder="Update category Description"></sf:input>
							</div>
						
							<div class="col-xs-3">
								<div class="form-group">
								<br>
									<input type="submit" value="Update" class="btn btn-info btn-block">
								</div>
							</div>
								</div>
					</sf:form>

				</div>
			</div>
		</div>
	</div>
   
  </c:otherwise>
  </c:choose>

	<script>
		var prod = ${clist};
		angular.module('getcategory', []).controller('getcategoryController',function($scope)
				{
					$scope.products = prod;

					$scope.sort = function(keyname) {
						$scope.sortKey = keyname; //set the sortKey to the param passed
						$scope.reverse = !$scope.reverse; //if true make it false and vice versa
					}

				});
	</script>

	<div ng-app="getcategory" ng-controller="getcategoryController">
		<div class="col-md-12">
			<h4 align="center">Manage Category</h4>
			<div id="custom-search-input">
				<div class="input-group col-md-12">
					<input type="text" class="search-query form-control" placeholder="Search" ng-model="seachproduct" /></span>
				</div>
			</div>

			<div class="table-responsive">
				<table id="mytable" class="table table-bordred table-striped">
					<th>Category Id</th>
					<th>Category Name</th>
					<th>Category Description</th>
					<th>Update Category</th>
					<th>Delete Category</th>
					<tr class="success"	ng-repeat="categoey in products|filter:seachproduct">
						<td>{{categoey.categoryId}}</td>
						<td>{{categoey.categoryName}}</td>
						<td>{{categoey.categoryDecs}}</td>
						<td><p data-placement="top" data-toggle="tooltip" title="Delete"><a data-title="Edit" class="btn btn-primary btn-xs" href="fetchCategorytoupdate?cid={{categoey.categoryId}}"> <span class="glyphicon glyphicon-pencil"></span></span></a></td>
						<td><p data-placement="top" data-toggle="tooltip" title="Delete"><a data-title="Edit" class="btn btn-danger btn-xs"	href="deletCategory?cid={{categoey.categoryId}}"> <span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="CommonFooter.jsp"%>