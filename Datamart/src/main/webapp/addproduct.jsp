<%@include file="sheader.jsp"%>
 <%
 String name=(String)session.getAttribute("name");
 %>     

	  <div class="row">
    
	<form action="addproduct1.jsp" method="post">
	<div class="col-md-4" style="left: 300px;top: 50px">
	<h3>Add Product</h3>
      <input type="text" class="form-control" value="<%=name%>" required name="name" readonly  style="width: 220px;"><br>
     <input type="text" class="form-control" placeholder="Enter Product Name" required  name="pname" style="width: 220px;"><br>
     <input type="text" class="form-control" placeholder="Enter Product Description" required  name="pdes" style="width: 220px;"><br>
     <input type="text" class="form-control" placeholder="Enter Product quantity" required  name="pq" style="width: 220px;"><br>
     <input type="text" class="form-control" placeholder="Enter Product price" required  name="pprice" style="width: 220px;"><br>



	 
	 <div class="col" style="left: 30px;top: 10px">
	 <input type="hidden" value="1" name="status" />
	<button type="submit" class="btn btn-default" >Add</button>
	</div><br>
    <div class="col" style="left: 120px;top: -53px">
     <button type="reset" class="btn btn-default">Reset</button>
    </div>
	</div>
	</div>
	</form>
	
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





