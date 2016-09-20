<%@include file="CommonHeader.jsp" %>
<script>
  var prod = ${productdetails};
  var ctr;
  angular.module('productdetails', []).controller('productController', function($scope)
   {
	  $scope.products=prod;    
    });
</script>

	<div class="container" ng-app="productdetails" ng-controller="productController">
		<div class="content-wrapper">
			<div class="item-container">
				<div class="container" ng-repeat="pro in products">
					<div class="col-md-12">
						<div class="product col-md-4 service-image-left">
						<center><img id="item-display"  src="./resources/productimage/{{pro.productId}}.jpg" height="300"  width="300" data-zoom-image="./resources/productimage/{{pro.productId}}.jpg"></img></center>
						</div>
					
					   <div class="col-md-7" >
					   <br><br>
						<div class="product-title">{{pro.productName}}</div>
						<div class="product-desc">{{pro.productDescription}}</div>
						<div class="product-rating">
							<i class="fa fa-star gold"></i> 
							<i class="fa fa-star gold"></i>
							 <i	class="fa fa-star gold"></i>
							 <i class="fa fa-star gold"></i>
							 <i class="fa fa-star-o"></i>
						</div>
						<hr>
						<div class="product-price">Rs {{pro.productPrice}}</div>
						<div class="product-stock">Stock {{pro.productStock}}</div>
						<hr>
						<div class="btn-group cart">
							
							<a class="btn btn-success" href="addtocart?prodid={{pro.productId}}">Add to cart</a>
							</div>
							<div class="btn-group cart">
							<a class="btn btn-success" href="addtocart?prodid={{pro.productId}}">By Now</a>
						</div>
					   </div>
					   </div>
				</div>
			</div>
		</div>
	</div>
<%@include file="CommonFooter.jsp"%>