<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>
	 <%
	 
	 String name=(String)session.getAttribute("name");
	 
	 String id=request.getParameter("id");
	 
	 Connection con=null;
	 Statement st=null;
	 ResultSet rs=null;
	 
	 try {
				 
                    con = DbConnection.getConnection();

                    st = con.createStatement();
				
				int i=st.executeUpdate("update orders set admin='1' where id='"+id+"'");
					
					
				
                    if(i!=0) {
						response.sendRedirect("apoview.jsp?msg='success'");
				
				}
				else{
					
					response.sendRedirect("apoview.jsp?msg='failed'");
				}
	 }
				catch (Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("customerhome.jsp?msggg=failed");
                }
	 
	 
	 
	 
	 %>