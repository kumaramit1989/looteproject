<%@include file="AdminHeader.jsp" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Add Category </h3>
			    				</div>
			 			<div class="panel-body">
			    		
			    		<sf:form action="addCategory" method="post" commandName="Category">
			    		<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="categoryid">Category Id</sf:label>
			                        <sf:input path="categoryid" class="form-control input-sm"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="category">Category</sf:label>
			                        <sf:input path="category" class="form-control input-sm" placeholder="Category name"></sf:input>
			    					</div>
			    				</div>
			    				
			    					<div class="form-group col-xs-12">
                                    <sf:label path="categorydecs">Category Description</sf:label>
			                        <sf:input path="categorydecs" class="form-control input-sm" placeholder="category Description"></sf:input>
			    					</div>
			    					<div class="col-xs-6 col-sm-6 col-md-6">
			    		 </div>
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		</sf:form>
		
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>

<%@include file="CommonFooter.jsp" %>