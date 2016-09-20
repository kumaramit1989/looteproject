
<%@include file="CommonHeader.jsp" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<SCRIPT type="text/javascript"> 

function validatePassword(){
	var password = document.getElementById("password");
	var confirm_password = document.getElementById("passwordconfirmation");

if(password.value != confirm_password.value) {
	
  confirm_password.setCustomValidity("Passwords Don't Match");
  confirm_password.reportValidity();
  //alert('sorry');
  //return false;
}
//return true;


else {
 confirm_password.setCustomValidity('');
}
}
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</SCRIPT> 
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Reset password</h3>
			 			</div>
			 			
			 			<div class="panel-body">
			    		<sf:form action="changepassword" method="post" commandName="resetpassword">
			    		<div class="form-group">
                                    <sf:label path="userName">User Name</sf:label>
			    				<sf:input  path="userName" class="form-control input-sm" required="true" placeholder="user name"></sf:input>
			    			</div>
			    			<div class="form-group">
                                    <sf:label path="password">password</sf:label>
			    				<sf:password required="true"  path="password" id="password" class="form-control input-sm" placeholder="password"></sf:password>
			    			</div>
			    				<div class="form-group">
                                    <sf:label  path="ConfirmPassword">Confirm Password</sf:label>
			    				<sf:password required="true" id="passwordconfirmation"  path="ConfirmPassword" class="form-control input-sm" placeholder="New password"></sf:password>
			    			</div>
			    			<input type="submit" value="Reset" class="btn btn-info btn-block">
			    		
			    		</sf:form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
<%@include file="CommonFooter.jsp" %>