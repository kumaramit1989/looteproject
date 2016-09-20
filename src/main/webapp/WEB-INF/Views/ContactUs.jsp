<%@include file="CommonHeader.jsp" %>

<div class="container">
  <div class="row">
   <div class="col-sm-5 text-justify">
   <br><br><br><br>
   <p style="margin-bottom: 25px; text-align: center;"><b>Give Us a Call or Drop an Email We Are Always Here To Help Out In Whatever Way We Can</b></p>
   <p style="margin-bottom: 25px; text-align: center;"><b>Lootle Prasad shopping Center .2nd floor, Opposite railway station ,Above Surabhi Snacks., Jawahar Nagar, Goregaon West, Mumbai, Maharashtra 400062 <br> Phone: 099206 35434</b></p>
    <img src="resources/img/Contact.png" class="img-rounded img-responsive" alt="Cinque Terre" width="350" height="236">
   </div>
    <div class="col-sm-5 text-justify">
    <div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form action="sendemail" method="post">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">Contact Form</h3>
    				<div class="form-group">
						<input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
					</div>
                    <div class="form-group">
                    <textarea class="form-control" type="textarea" name="Message" placeholder="Message" maxlength="140" rows="7"></textarea>                   
                    </div>
            
        <input type="submit" class="btn btn-success btn-block pull-right"/>
        </form>
    </div>
</div>
</div>
    </div>
  </div>
</div>
<%@include file="CommonFooter.jsp" %>
