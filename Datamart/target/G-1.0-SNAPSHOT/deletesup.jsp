<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

 <%
 String id=request.getParameter("id");
	 Connection con=null;
	 Statement st=null;
	 
	 try{
		 
		 
		 con = DbConnection.getConnection();

                    st = con.createStatement();
	System.out.println("hello"+id);	 
		 int i = st.executeUpdate("delete from supplier where id='"+id+"' ");
		 
		 if(i!=0){
			 response.sendRedirect("adminhome.jsp?msg='Deleted'");
		  }
		  else{
			  response.sendRedirect("adminhome.jsp?msg='failed'");
		  }
	 }
		  catch(Exception ex){
		  out.println(ex);
		  }
	 
	 %>