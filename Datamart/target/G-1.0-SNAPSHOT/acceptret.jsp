<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

 <%
 String id=request.getParameter("id");
	 Connection con=null;
	 Statement st=null;
	 try{
		 
		 con = DbConnection.getConnection();

                    st = con.createStatement();
		 
		 int i = st.executeUpdate("update retailer set status='1' where id='"+id+"'");
		 
		 if(i!=0){
			 response.sendRedirect("irapprove.jsp?msg='added'");
		  }
		  else{
			  response.sendRedirect("irapprove.jsp?msg='failed'");
		  }
	 }
		  catch(Exception ex){
		  out.println(ex);
		  }
	 
	 %>