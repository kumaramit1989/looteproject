

<%@include file="CommonHeader.jsp" %>
<script>
  var prod = ${Productlist};
  var ctr;
  angular.module('repeatSample', []).controller('repeatController', function($scope)
   {
                 $scope.products=prod;
   
              
    });
  
</script>
 

<div ng-app="repeatSample" ng-controller="repeatController">
<div class="container">
	<div class="row">
		<h2 align="center">Search Products</h2>
           <div id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input type="text" class="search-query form-control" placeholder="Search" ng-model="seachproduct" />
                                </span>
                            </div>
           </div>
	</div>

<br>

		<div class="row centered-form">
			<div ng-repeat="product in products|filter:seachproduct">
				<div class="col-xs-4">
					<div class="item">
						<div class="thumbnail">
						<a href="fetchproducttodisplay?prodid={{product.productId}}"><img src="./resources/productimage/{{product.productId}}.jpg" height="200px" width="200px" /></a>
							<div class="caption">
								<h4 align="center" class="group inner list-group-item-heading">{{product.productName}}</h4>
								<p align="center" class="group inner list-group-item-text">{{product.productDescription}}</p>
								<div class="row">
									<div class="col-xs-12 col-md-6">
										<p align="center" class="lead">Rs {{product.productPrice}}</p>
									</div>
									<div class="col-xs-12 col-md-6">
										<p align="center" class="lead">Stock
											{{product.productStock}}</p>
									</div>
									<div align="center">
										<a class="btn btn-success" href="addtocart?prodid={{product.productId}}">Add to cart</a>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="CommonFooter.jsp" %> 
