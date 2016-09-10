<%@include file="AdminHeader.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
<c:choose>
  <c:when test="${check}">
   <div class="row centered-form">
		<div class="col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 align="center" class="panel-title">Add Supplier</h3>
				</div>
		
					<div class="panel-body">

					<sf:form action="addSupplier" method="post" commandName="Supplier">
						<div class="row">
							<div class="col-xs-2">
								<div class="form-group">
									<sf:label path="supplierId">Supplier Id</sf:label>
									<sf:input path="supplierId" readonly="true" class="form-control input-sm"></sf:input>
								</div>
							</div>
							<div class="col-xs-2">
								<div class="form-group">
									<sf:label path="supplierName">Supplier Name</sf:label>
									<sf:input path="supplierName" class="form-control input-sm"	placeholder="supplier Name"></sf:input>
								</div>
							</div>
					
							<div class="form-group col-xs-2">
								<sf:label path="supplierContact">Supplier Contact</sf:label>
								<sf:input path="supplierContact" class="form-control input-sm"	placeholder="supplier Contact"></sf:input>
							</div>
							<div class="form-group col-xs-3">
								<sf:label path="supplierAdress">Supplier Adress</sf:label>
								<sf:textarea path="supplierAdress" class="form-control input-sm"	placeholder="supplier Contact"></sf:textarea>
							</div>
							<div class="col-xs-2">
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
					<h3 align="center" class="panel-title">Update Supplier</h3>
				</div>
		
					<div class="panel-body">

					<sf:form action="updateSupplier" method="post" commandName="Supplier">
						<div class="row">
							<div class="col-xs-2">
								<div class="form-group">
									<sf:label path="supplierId">Supplier Id</sf:label>
									<sf:input path="supplierId" readonly="true" class="form-control input-sm"></sf:input>
								</div>
							</div>
							<div class="col-xs-2">
								<div class="form-group">
									<sf:label path="supplierName">Supplier Name</sf:label>
									<sf:input path="supplierName" class="form-control input-sm"	placeholder="supplier Name"></sf:input>
								</div>
							</div>
					
							<div class="form-group col-xs-2">
								<sf:label path="supplierContact">Supplier Contact</sf:label>
								<sf:input path="supplierContact" class="form-control input-sm"	placeholder="supplier Contact"></sf:input>
							</div>
							<div class="form-group col-xs-2">
								<sf:label path="supplierAdress">Supplier Adress</sf:label>
								<sf:textarea path="supplierAdress" class="form-control input-sm"	placeholder="supplier Contact"></sf:textarea>
							</div>
							<div class="col-xs-2">
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
		var sup = ${Supplierlist};
		angular.module('getSupplier', []).controller('getSupplierController',function($scope)
				{
					$scope.Suppliers = sup;

					$scope.sort = function(keyname) {
						$scope.sortKey = keyname; //set the sortKey to the param passed
						$scope.reverse = !$scope.reverse; //if true make it false and vice versa
					}

				});
	</script>

	<div ng-app="getSupplier" ng-controller="getSupplierController">
		<div class="col-md-12">
			<h4 align="center">Manage Suppliers</h4>
			<div id="custom-search-input">
				<div class="input-group col-md-12">
					<input type="text" class="search-query form-control" placeholder="Search" ng-model="seachproduct" /></span>
				</div>
			</div>

			<div class="table-responsive">
				<table id="mytable" class="table table-bordred table-striped">
				<tr>
					<th>Supplier Id</th>
					<th>Supplier Name</th>
					<th>Supplier Contact</th>
					<th>Supplier Address</th>
					<th>Update Supplier</th>
					<th>Delete Supplier</th>
					</tr>
					<tr class="success"	ng-repeat="sup in Suppliers|filter:seachproduct">
						<td>{{sup.supplierId}}</td>
						<td>{{sup.supplierName}}</td>
						<td>{{sup.supplierContact}}</td>
						<td>{{sup.supplierAdress}}</td>
						<td><p data-placement="top" data-toggle="tooltip" title="Edit"><a data-title="Edit" class="btn btn-primary btn-xs" href="fetchsuppliertoupdate?supid={{sup.supplierId}}"> <span class="glyphicon glyphicon-pencil"></span></span></a></td>
						<td><p data-placement="top" data-toggle="tooltip" title="Delete"><a data-title="Edit" class="btn btn-danger btn-xs"	href="deletSupplier?supid={{sup.supplierId}}"> <span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
 
</div>

<%@include file="CommonFooter.jsp"%>