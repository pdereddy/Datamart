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
		 int i = st.executeUpdate("delete from incharge where id='"+id+"' ");
		 
		 if(i!=0){
			 response.sendRedirect("aainch.jsp?msg='added'");
		  }
		  else{
			  response.sendRedirect("aainch.jsp?msg='failed'");
		  }
	 }
		  catch(Exception ex){
		  out.println(ex);
		  }
	 
	 %>