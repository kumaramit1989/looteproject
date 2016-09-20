<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Customer Info</title>
</head>
<body>
<div class="container">
    <div class="row setup-content" id="ProfileSetup-step">
        <div class="col-xs-12">
            <div class="col-md-12">
                 <br/>     <br/> <br/>
                <div class="form-horizontal">
                    <form:form commandName="cart" method="post">
                        <fieldset>
                      
                     <center><legend>Review Your billing Details</legend></center>
                          <br/>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-holder-name">Your Email</label>
                            <div class="col-sm-9">
                              <input  maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Email"  />
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Name</label>
                            <div class="col-sm-9">
                             <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Name" />
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Primary Phone Number</label>
                            <div class="col-sm-9">
                             <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Primary Phone Number" />
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Address</label>
                            <div class="col-sm-9">
                             <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Address" />
                            </div>
                          </div>
                          <div class="col-lg-6">
                               <div class="form-group">
                                    <label class="col-sm-6 control-label" for="card-number">City</label>
                                    <div class="col-sm-6" style="padding-left:8px">
                                     <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter City" />
                                    </div>
                                  </div>
                          </div>
                           <div class="col-lg-6">
                               <div class="form-group">
                                    <label class="col-sm-6 control-label" for="card-number">State/Province</label>
                                    <div class="col-sm-6" style="padding:0px">
                                     <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter State/Province" />
                                    </div>
                                  </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">Country</label>
                            <div class="col-sm-9">
                             <select required="required" class="form-control" >
                                  <option value="0">Select Country</option>
                                 <option value="pakistan">India</option>
                                 <option value="usa">USA</option>
                             </select>
                            </div>
                          </div>
                        </fieldset>
                   
               
                <div class="row">
                <div class="col-lg-4">
              <!--   <button class="btn btn-success nextBtn  pull-right" type="button" >Review cart info</button>  -->
           		</div>
           		 <div class="col-lg-4">
           		<a href="paymentmode" class="btn btn-success nextBtn  pull-right" type="button" >Cancel Order</a>
         		 </div>
           		 <div class="col-lg-4">
           		<input type="submit" name="_eventId_submit"
							class="btn btn-md btn-danger" value="Submit"></div>
         		 </div>
           
           </form:form>
        </div>
    </div>
    </div>

</div>
</body>
</html>