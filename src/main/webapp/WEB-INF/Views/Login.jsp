<%@include file="CommonHeader.jsp" %>

 <div id="login-overlay" class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
                 <h4 class="modal-title" id="myModalLabel">Login to lootle.com</h4>
                 <h5 style="color:red;"></h5>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well">
                          <form id="loginForm" method="POST" action="perform_login" novalidate="novalidate">
                              <div class="form-group">
                                  <label for="username" class="control-label">Username</label>
                                  <input type="text" class="form-control" id="username" name="username" value="" required="" title="Please enter you username" placeholder="user name">
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="password" class="control-label">Password</label>
                                  <input type="password" class="form-control" id="password" name="password" value="" required="" title="Please enter your password">
                                  <span class="help-block"></span>
                              </div>
                              <div id="loginErrorMsg" class="alert alert-error hide">Wrong username og password</div>
                              <div class="checkbox">
                                  <label>
                                      <input type="checkbox" name="remember" id="remember"> Remember login
                                  </label>
                                  <p class="help-block">(if this is a private computer)</p>
                              </div>
                              <button type="submit" class="btn btn-success btn-block">Login</button>
                              <a href="resetpassword" class="btn btn-warning btn-block">Reset password</a>
                          </form>
                      </div>
                  </div>
                  <div class="col-xs-6">
                     	 <p class="lead">Register now</p>
                      <ul class="list-unstyled" style="line-height: 2">
                          <li><span class="fa fa-check text-success glyphicon glyphicon-ok"></span> See all your orders</li>
                          <li><span class="fa fa-check text-success glyphicon glyphicon-ok"></span> Fast re-order</li>
                          <li><span class="fa fa-check text-success glyphicon glyphicon-ok"></span> Save your favorites</li>
                          <li><span class="fa fa-check text-success glyphicon glyphicon-ok"></span> Fast checkout</li>
                          <li><span class="fa fa-check text-success glyphicon glyphicon-ok"></span> Get a gift <small>(only new customers)</small></li>
                      </ul>
                      <br><br>
                      <p><a href="userRegistrationview" class="btn btn-success btn-block">Register now</a></p>
                  </div>
              </div>
          </div>
      </div>
  </div>
<%@include file="CommonFooter.jsp" %>