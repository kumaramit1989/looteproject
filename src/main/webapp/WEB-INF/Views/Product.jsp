

<%@include file="CommonHeader.jsp" %>
<script>
  var prod = ${proddt};
  var ctr;
  angular.module('repeatSample', []).controller('repeatController', function($scope)
   {
                 $scope.products=prod;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
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
</div>
<br>
 <div id="products" class="row list-group" ng-repeat="product in products|filter:seachproduct">
 
        <div class="item">
            <div class="thumbnail">
               <img src="./resources/img/{{product.image}}.jpg" height="250px" width="450px"/>
                <div class="caption">
                    <h4 align="center" class="group inner list-group-item-heading">{{product.productName}}</h4>
                    <p align="center" class="group inner list-group-item-text">{{product.description}}</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p align="center" class="lead">Rs {{product.price}}</p>
                        </div>
                        <div align="center">
                            <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

</div>
<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table border="1" >
    <c:forEach var="pro" items="${li}">
        <tr>
            <td>${pro.productID}</td>
            <td>${pro.productName}></td>
            <td>${pro.description}</td>
            <td>${pro.price}</td>
            <td>${pro.quantity}</td>
        </tr>
    </c:forEach>
    
</table>


<%@include file="CommonFooter.jsp" %>  -->
