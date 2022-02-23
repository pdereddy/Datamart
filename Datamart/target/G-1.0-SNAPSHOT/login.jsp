<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

<%
Connection con=null;
Statement st=null;
ResultSet rs=null;

String a=request.getParameter("name");
String b=request.getParameter("pwd");

int status = Integer.parseInt(request.getParameter("status"));

System.out.println(status);

switch(status){


case 1:

		if(a.equalsIgnoreCase("admin") && b.equalsIgnoreCase("admin")){
		
		
		response.sendRedirect("adminhome.jsp");
		
		}
		else{
			response.sendRedirect("adminlog.jsp?msg='failed'");
		}
		break;


case 2:

try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	rs=st.executeQuery("select * from incharge where name='"+a+"' and password='"+b+"' and status='1'");
	if(rs.next()){
		session.setAttribute("name",a);
		response.sendRedirect("inchargehome.jsp");
	}
	else{
		response.sendRedirect("inchargelog.jsp?msg='failed'");
		
	}
}
catch(Exception ex)
{
	out.println(ex);
	
}
break;

case 3:

try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	rs=st.executeQuery("select * from supplier where name='"+a+"' and password='"+b+"' and status='1'");
	if(rs.next()){
		session.setAttribute("name",a);
		response.sendRedirect("supplyhome.jsp");
	}
	else{
		response.sendRedirect("supplylog.jsp?msg='failed'");
		
	}
}
catch(Exception ex)
{
	out.println(ex);
	
}
break;



case 4:

try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	rs=st.executeQuery("select * from retailer where name='"+a+"' and password='"+b+"' and status='1'");
	if(rs.next()){
		session.setAttribute("name",a);
		response.sendRedirect("retailerhome.jsp");
	}
	else{
		response.sendRedirect("retailog.jsp?msg='failed'");
		
	}
}
catch(Exception ex)
{
	out.println(ex);
	
}
break;



case 5:

try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	rs=st.executeQuery("select * from customer where name='"+a+"' and password='"+b+"'");
	if(rs.next()){
		session.setAttribute("name",a);
		response.sendRedirect("customerhome.jsp");
	}
	else{
		response.sendRedirect("custlog.jsp?msg='failed'");
		
	}
}
catch(Exception ex)
{
	out.println(ex);
	
}
break;


}
%>