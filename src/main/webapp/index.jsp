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
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/img/s1.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
        <h3>I Am What I Am</h3>
        </div>
      </div>
      <div class="item">
        <img src="resources/img/s6.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
          <h3>Save Time Live Better</h3>
        </div>
      </div>
  
      <div class="item">
        <img src="resources/img/s2.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
          <h3>Challenge EveryThing </h3>
        </div>
      </div>

      <div class="item">
        <img src="resources/img/s5.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
           <h3>Because You Deserve It </h3>
        </div>
      </div>
      <div class="item">
        <img src="resources/img/s3.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
           <h3>It feels Good </h3>
        </div>
      </div>
        <div class="item">
        <img src="resources/img/s4.jpg" class="img-responsive" height="350">
        <div class="carousel-caption">
           <h3>Just Do It </h3>
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

<div class="container">
  
    <div id="products" class="row list-group">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
          <a href="recenttenproducts"> <img class="group list-group-image" src="resources/img/na.jpg"/></a> 
                <div class="caption">
                    <h4 align="center" class="group inner list-group-item-heading">New arrivals</h4>
                    <p align="center" class="group inner list-group-item-text">click here to view latest arrivals</p>
                    <div align="center" class="row">
                        <div align="center">
                            <a class="btn btn-success" href="recenttenproducts">View Latest Products</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
            <a href="productscatwise?catidid=1"><img class="group list-group-image" src="resources/img/w.jpe" alt="" /></a> 
                <div class="caption">
                    <h4 align="center" class="group inner list-group-item-heading">Watches</h4>
                    <p align="center" class="group inner list-group-item-text">click here to view all watches</p>
                    <div align="center" class="row">
                        <div align="center">
                            <a class="btn btn-success" href="productscatwise?catidid=1">View all Watches</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
             <a href="productscatwise?catidid=2"> <img class="group list-group-image" src="resources/img/G.jpg" alt="" /></a>
                <div class="caption">
                    <h4 align="center" class="group inner list-group-item-heading">Deodorant and perfumes</h4>
                    <p align="center" class="group inner list-group-item-text">click here to view Deodorant and perfumes</p>
                    <div align="center" class="row">
                        <div align="center">
                            <a class="btn btn-success" href="productscatwise?catidid=2">Deodorant and perfumes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="WEB-INF/Views/CommonFooter.jsp" %>
