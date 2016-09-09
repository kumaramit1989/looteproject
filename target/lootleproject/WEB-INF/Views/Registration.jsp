<%@include file="CommonHeader.jsp" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up for to complete order <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<sf:form action="" method="post" commandName="registration">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="firstName">First name</sf:label>
			                <sf:input path="firstName" class="form-control input-sm" placeholder="First Name"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="lastName">Last name</sf:label>
			    						<sf:input path="lastName" class="form-control input-sm" placeholder="Last Name"></sf:input>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="form-group">
                                    <sf:label path="emailId">Email address</sf:label>
			    				<sf:input   path="emailId" class="form-control input-sm" placeholder="Email Address"></sf:input>
			    			</div>
							<div class="form-group">
                                    <sf:label path="contact">Contact</sf:label>
			    				<sf:input   path="contact" class="form-control input-sm" placeholder="Contact number"></sf:input>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="password">Password</sf:label>
			    						<sf:password  path="password" class="form-control input-sm" placeholder="Password"></sf:password>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="confirmPassword">Confirm password</sf:label>
			    						<sf:password  path="confirmPassword" class="form-control input-sm" placeholder="Confirm Password"></sf:password>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="form-group">
                                    <sf:label path="address">Shipping Adress</sf:label>
			    				<sf:textarea   path="address" class="form-control input-sm" placeholder="Shipping Adress"></sf:textarea>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="state">State</sf:label>
			    						<sf:input  path="state" class="form-control input-sm" placeholder="Password"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="city">city</sf:label>
			    						<sf:input  path="city" class="form-control input-sm" placeholder="city"></sf:input>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="country">Country</sf:label>
			    						<sf:input  path="country" class="form-control input-sm" placeholder="Country"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="pinCode">pinCode</sf:label>
			    						<sf:input  path="pinCode" class="form-control input-sm" placeholder="pinCode"></sf:input>
			    					</div>
			    				</div>
			    			</div>
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</sf:form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
<%@include file="CommonFooter.jsp" %>