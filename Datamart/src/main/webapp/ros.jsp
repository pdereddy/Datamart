<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>
<%@include file="rheader.jsp"%>
        <h2>Orders</h2><br>
	 <%
	 
	 String cname=(String)session.getAttribute("name");
	 
	 
	 
	 Connection con=null;
	 Statement st=null;
	 ResultSet rs=null;
	 
	 try {
				 
                    con = DbConnection.getConnection();

                    st = con.createStatement();
				
				rs=st.executeQuery("select * from orders where supplier='1' order by payment_stat ASC");
					%>
                                        <header>
                                        <div>
					<center><table border='1'>
					<tr>
					<th>id</th>
					<th>Customer Name</th>
					<th>Product Name</th>
					<th>Supplier Name</th>
					<th>Product Price</th>
					<th>Payment Status</th>
					<th>Action</th>
					</tr>

					
					<%
					
                    while(rs.next()) {
						%>
						<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(11)%></td>
						<td><a href="ros1.jsp?id=<%=rs.getString(1)%>"><font color="red">Paid</font></a></td>
						</tr>
						
						<%}
                %>
				</table></center><%
				}
				catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("retailerhome.jsp?msggg=failed");
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
