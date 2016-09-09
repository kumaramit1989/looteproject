
<%@include file="CommonHeader.jsp" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Reset password</h3>
			 			</div>
			 			
			 			<div class="panel-body">
			    		<sf:form action="" method="post" commandName="resetpassword">
			    		<div class="form-group">
                                    <sf:label path="userName">User Name</sf:label>
			    				<sf:input   path="userName" class="form-control input-sm" placeholder="Email Address"></sf:input>
			    			</div>
			    			<div class="form-group">
                                    <sf:label path="emailId">Email address</sf:label>
			    				<sf:input   path="emailId" class="form-control input-sm" placeholder="Email Address"></sf:input>
			    			</div>
			    				<div class="form-group">
                                    <sf:label path="newPassword">New Password</sf:label>
			    				<sf:input   path="newPassword" class="form-control input-sm" placeholder="Email Address"></sf:input>
			    			</div>
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</sf:form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
<%@include file="CommonFooter.jsp" %>