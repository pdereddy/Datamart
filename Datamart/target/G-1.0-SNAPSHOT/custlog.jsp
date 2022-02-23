	<%@include file="iheader.jsp"%>
<form action="login.jsp" method="post">     
	   <div class="row">
    <div class="col-md-4" style="right: 60px;">
      <div class="thumbnail">
          <img src="./img/g1.jpg" alt="Lights" style="width: 500px;height: 300px;">
          
        </a>
      </div>
    </div>
	
	
	<div class="col-md-4" style="left: 300px;top: 50px">
	<h3>Customer Login</h3>
      <input type="text" class="form-control" placeholder="Enter Username" required name="name"  style="width: 220px;"><br>
     <input type="password" class="form-control" placeholder="Enter password" required  name="pwd" style="width: 220px;"><br>
	 </div>
	 <div class="col" style="left: 50px;top: 210px">
	 <input type="hidden" value="5" name="status" />
	<button type="submit" class="btn btn-default" >Submit</button>
	</div><br>
    <div class="col" style="left: 2px;top: 210px">
     <button type="reset" class="btn btn-default">Reset</button>
    </div>
	<div class="col" style="left: 280px;top: -30px">
     <h5>Not Registered?</h5><a href="custreg.jsp" ><font color="red">Click Here</a>
    </div>
  </div>
</form>
	
	</div>
        <h2 class="font-weight-light mb-0"></h2>
      </div>
    </header>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.min.js"></script>

  </body>

</html>
