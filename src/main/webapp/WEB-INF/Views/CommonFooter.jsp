<style>



/*=========================
  Icons
 ================= */

/* footer social icons */
ul.social-network {
	list-style: none;
	display: inline;
	margin-left:0 !important;
	padding: 0;
}
ul.social-network li {
	display: inline;
	margin: 0 5px;
}


/* footer social icons */
.social-network a.icoFacebook:hover {
	background-color:#3B5998;
}
.social-network a.icoTwitter:hover {
	background-color:#33ccff;
}
.social-network a.icoGoogle:hover {
	background-color:#BD3518;
}
.social-network a.icoVimeo:hover {
	background-color:#0590B8;
}
.social-network a.icoLinkedin:hover {
	background-color:#007bb7;
}
.social-network a.icoRss:hover i, .social-network a.icoFacebook:hover i, .social-network a.icoTwitter:hover i,
.social-network a.icoGoogle:hover i, .social-network a.icoVimeo:hover i, .social-network a.icoLinkedin:hover i {
	color:#fff;
}
a.socialIcon:hover, .socialHoverClass {
	color:#44BCDD;
}

.social-circle li a {
	display:inline-block;
	position:relative;
	margin:0 auto 0 auto;
	-moz-border-radius:50%;
	-webkit-border-radius:50%;
	border-radius:50%;
	text-align:center;
	width: 50px;
	height: 50px;
	font-size:20px;
}
.social-circle li i {
	margin:0;
	line-height:50px;
	text-align: center;
}

.social-circle li a:hover i, .triggeredHover {
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-ms--transform: rotate(360deg);
	transform: rotate(360deg);
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-ms-transition: all 0.2s;
	transition: all 0.2s;
}
.social-circle i {
	color: #fff;
	-webkit-transition: all 0.8s;
	-moz-transition: all 0.8s;
	-o-transition: all 0.8s;
	-ms-transition: all 0.8s;
	transition: all 0.8s;
}

.a1 {
 background-color: #212020;   
}
</style>

<div class="col-md-1">
</div>
<div class="col-md-5">
	<br>
	<br>
	<p>&copy;lootle.com All right reserved Designed by Amit Yadav</p>

</div>
<div class="col-md-3">
 <%
    Integer hitsCount =(Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 )
    {
       /* First visit */
      // out.println("Welcome to lootle.com!");
       hitsCount = 1;
    }
    else
    {
       /* return visit */
       //out.println("Welcome to lootle.com!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<center><p>Total number of visits: <%= hitsCount%></p></center>  
</div>
<div class="col-md-3">
<br>
	<br>
	<ul class="social-network social-circle">
		<li><a href="https://www.facebook.com/VoiceofMyheart2015/" class="icoFacebook a1" title="Facebook"><i
				class="fa fa-facebook"></i></a></li>
		<li><a href="#" class="icoTwitter a1" title="Twitter"><i
				class="fa fa-twitter"></i></a></li>
		<li><a href="#" class="icoGoogle a1" title="Google +"><i
				class="fa fa-google-plus"></i></a></li>
		<li><a href="#" class="icoLinkedin a1" title="Linkedin"><i
				class="fa fa-linkedin"></i></a></li>
	</ul>
</div>
</body>
</html>