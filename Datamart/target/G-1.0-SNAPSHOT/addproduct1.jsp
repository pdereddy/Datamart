<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

<%
Connection con=null;
Statement st=null;

String a=request.getParameter("name");
String b=request.getParameter("pname");
String c=request.getParameter("pdes");
String d=request.getParameter("pq");
String e=request.getParameter("pprice");


int status = Integer.parseInt(request.getParameter("status"));

System.out.println(status);

switch(status){


case 1:
try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	int i=st.executeUpdate("insert into product(psupplier,pname,pdes,pqua,price)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
	if(i!=0){
		response.sendRedirect("addproduct.jsp?msg='added'");
	}
	else
	{
		response.sendRedirect("addproduct.jsp?msg='failed'");
	}
}
catch(Exception ex){
out.println(ex);
}
}
%>