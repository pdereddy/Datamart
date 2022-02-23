<%@include file="iheader.jsp"%>
<form action="reg.jsp" method="post">       
	   <div class="row">
    <div class="col-md-4" style="right: 60px;">
      <div class="thumbnail">
          <img src="./img/g1.jpg" alt="Lights" style="width: 500px;height: 300px;">
          
        </a>
      </div>
    </div>
	
	
	<div class="col" style="left: 300px;top: -10px">
	<h3>Incharge Registration</h3>
      <input type="text" class="form-control" placeholder="Enter Username" name="name" required  style="width: 250px;"><br>
     <input type="password" class="form-control" placeholder="Enter password" name="pwd" required><br>
     <input type="date" class="form-control" placeholder="Enter Date of Birth" name="dob" required  style="width: 250px;"><br>
      <input type="email" class="form-control" placeholder="Enter Email-Id" name="email" required  style="width: 250px;"><br>

      <input type="number" class="form-control" placeholder="Enter Mobile Number" name="phne" required  style="width: 250px;"><br>
	  <textarea placeholder="Enter Address" name="address" required style="width: 256px;"></textarea	>
	 </div>
	 <div class="col" style="left: 40px;top: 450px">
	 	 <input type="hidden" value="3" name="status" />

	<button type="submit" class="btn btn-default" >Register</button>
	</div><br>
    <div class="col" style="left: 5px;top: 450px">
     <button type="reset" class="btn btn-default">Reset</button>
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
