<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>


<%@include file="sheader.jsp"%>
 <%
 String name=(String)session.getAttribute("name"); 
 %>     

	  <div class="row">
	  
	  <form action="uproduct.jsp" method="post">
	<div class="col-md-4" style="left: 300px;top: 50px">
	<h3>Select Product</h3>
	<select name="pname">
	<option name="select">--select--</option>
	  <%
	  
	  Connection con=null;
Statement st=null;
ResultSet rs=null;

try{
	con=DbConnection.getConnection();
	st=con.createStatement();
	rs=st.executeQuery("select * from product");
	while(rs.next()){
	  %>
    <option name="<%=rs.getString(3)%>" value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
<%}%>
</select><br><br>

<%}
catch(Exception ex){
	out.println(ex);
}
%>
	 
	 
	 <input type="hidden" value="1" name="status" />
	<button type="submit" class="btn btn-default" >Select</button>
	</div><br>
    
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
