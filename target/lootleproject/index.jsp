<%@include file="WEB-INF/Views/CommonHeader.jsp" %>
<div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/img/s1.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
        </div>
      </div>
      <div class="item">
        <img src="resources/img/s2.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
        </div>
      </div>
  
      <div class="item">
        <img src="resources/img/s3.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
        </div>
      </div>

      <div class="item">
        <img src="resources/img/s4.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
        </div>
      </div>
      <div class="item">
        <img src="resources/img/s5.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<%@include file="WEB-INF/Views/CommonFooter.jsp" %>
