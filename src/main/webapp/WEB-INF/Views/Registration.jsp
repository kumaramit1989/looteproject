<%@include file="CommonHeader.jsp" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<script>
  var sucmsg = ${msg};
  angular.module('Samplemsg', []).controller('sampleController', function($scope)
   {
                 $scope.massage=sucmsg;
    });
</script>

<script type='text/javascript'>
<script type="text/javascript">
function Validate() {
    var password = document.getElementById("txtPassword").value;
    var confirmPassword = document.getElementById("txtConfirmPassword").value;
    if (password != confirmPassword)
    {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}
</script>
<div class="container" ng-app="repeatSample" ng-controller="repeatController">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up to complete order</h3>
			 			</div>
			 			<div class="panel-body">
			    		<sf:form action="userRegistration" method="post" commandName="Register">
			    		<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="userId">User Id</sf:label>
			              			  <sf:input path="userId" class="form-control input-sm" disabled="disabled" placeholder="Registration Id"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="firstName">First name</sf:label>
			    						<sf:input path="firstName" class="form-control input-sm" placeholder="First Name" required="true"></sf:input>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="lastName">Last name</sf:label>
			              			  <sf:input path="lastName" class="form-control input-sm" placeholder="Last Name" required="true"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                   <sf:label path="contact">Contact</sf:label>
			    					<sf:input   path="contact" class="form-control input-sm" placeholder="Contact number" pattern="^[789]\d{9}$" required="true" title="Enter valid 10 digit mobile number"></sf:input>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="row">
			    			<div class="col-xs-12">
			    			<div class="form-group">
			    			<sf:label path="emailId">Email name</sf:label>
			    						<sf:input path="emailId" class="form-control input-sm" placeholder="Email Id" required="true" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Invalid email id"></sf:input>
			    			</div>
			    			
							<div class="form-group">
                                   <sf:label path="userName">User Name</sf:label>
			    				<sf:input   path="userName" class="form-control input-sm" placeholder="User Id" pattern=".{5,15}" required="true" title="minimum length 5 and maximum 15"></sf:input>
			    			</div>
			    			</div>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-12">
			    					<div class="form-group">
                                    <sf:label path="password">Password</sf:label>
			    						<sf:password id="txtPassword"  path="password" class="form-control input-sm" placeholder="Password" required="true" pattern=".{5,15}" title="minimum length 5 and maximum 15"></sf:password>
			    					</div>
			    				</div>

			    			</div>
			    			<div class="form-group">
                                    <sf:label path="address">Shipping Address</sf:label>
			    				<sf:textarea   path="address" class="form-control input-sm" placeholder="Shipping Adress" required="true"></sf:textarea>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="state">State</sf:label>
			    						<sf:input  path="state" class="form-control input-sm" placeholder="State" required="true"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="city">city</sf:label>
			    						<sf:input  path="city" class="form-control input-sm" placeholder="city" required="true"></sf:input>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="country">Country</sf:label>
			    						<sf:input  path="country" class="form-control input-sm" placeholder="Country" required="true"></sf:input>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                    <sf:label path="pinCode">pinCode</sf:label>
			    						<sf:input  path="pinCode" class="form-control input-sm" placeholder="pinCode" required="true"></sf:input>
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