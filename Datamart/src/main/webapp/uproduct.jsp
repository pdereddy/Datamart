<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>


<%@include file="sheader.jsp"%>
 <%
 String name=(String)session.getAttribute("name"); 
 %>     

	  <div class="row">
	  <%
	  String pname=request.getParameter("pname");
	  Connection con=null;
Statement st=null;
ResultSet rs=null;

try{
	con=DbConnection.getConnection();
	st=con.createStatement();
	rs=st.executeQuery("select * from product where pname='"+pname+"'");
	while(rs.next()){

	  
	  %>
    
	<form action="uproduct1.jsp" method="post">
	<div class="col-md-4" style="left: 300px;top: 50px">
	<h3>Add Product</h3>
      <input type="text" class="form-control" value="<%=name%>" required name="name" readonly  style="width: 220px;"><br>
     <input type="text" class="form-control" value="<%=pname%>" required  name="pname" readonly style="width: 220px;"><br>
     <input type="text" class="form-control" value="<%=rs.getString(4)%>" required  name="pdes" readonly style="width: 220px;"><br>
     <input type="text" class="form-control" value="<%=rs.getString(5)%>" required  name="pq" style="width: 220px;"><br>
     <input type="text" class="form-control" value="<%=rs.getString(6)%>" required  name="pprice" style="width: 220px;"><br>

<%}
}
catch(Exception ex){
	out.println(ex);
}
%>

	 
	 <div class="col" style="left: 30px;top: 10px">
	 <input type="hidden" value="1" name="status" />
	<button type="submit" class="btn btn-default" >Update</button>
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
