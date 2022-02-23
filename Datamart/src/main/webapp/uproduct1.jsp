<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

<%
Connection con=null;
Statement st=null;
String name=(String)session.getAttribute("name");
String a=request.getParameter("name");
String b=request.getParameter("pname");
String c=request.getParameter("pdes");
String d=request.getParameter("pq");
String e=request.getParameter("pprice");


try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	int i=st.executeUpdate("update product set pqua='"+d+"',price='"+e+"' where pname='"+b+"' and psupplier='"+name+"'");
	if(i!=0){
		response.sendRedirect("uproduct2.jsp?msg='updated'");
	}
	else
	{
		response.sendRedirect("uproduct2.jsp?msg='failed'");
	}
}
catch(Exception ex){
out.println(ex);
}

%>