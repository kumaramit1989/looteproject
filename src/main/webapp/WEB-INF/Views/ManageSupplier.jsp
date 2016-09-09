<%@include file="AdminHeader.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">

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
 
</div>
<%@include file="CommonFooter.jsp"%>