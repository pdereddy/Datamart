<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>
<%@include file="inchheader.jsp"%>
        <h2>Supplier</h2><br>
	 <%
	 Connection con=null;
	 Statement st=null;
	 ResultSet rs=null;
	 
	 try {
				 
                    con = DbConnection.getConnection();

                    st = con.createStatement();
				
				rs=st.executeQuery("select * from product order by pname ASC");
					%>
					<center><table border='1'>
					<tr>
					<th>id</th>
					<th>Product Name</th>
					<th>Supplier Name</th>
					<th>Product Quantity</th>
					<th>Product Price</th>
					
					</tr>

					
					<%
					
                    while(rs.next()) {
						%>
						<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						
						</tr>
						
						<%}
                %>
				</table></center><%
				}
				catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("adminhome.jsp?msggg=failed");
                }
	 
	 
	 
	 
	 %>
	 
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
