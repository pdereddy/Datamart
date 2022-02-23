<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

<%
Connection con=null;
Statement st=null;
String a=request.getParameter("name");
String b=request.getParameter("pwd");
String c=request.getParameter("dob");
String d=request.getParameter("email");
String e=request.getParameter("phne");
String f=request.getParameter("address");

int status = Integer.parseInt(request.getParameter("status"));

System.out.println(status);

switch(status){


case 1:
try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	int i =st.executeUpdate("insert into supplier(name,password,dob,email,phne,address,status)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','0')");
			
			if(i!=0){
				response.sendRedirect("supplylog.jsp?msg='registered'");
				
			}
			else{
				
				response.sendRedirect("supplyreg.jsp?msg='failed'");
				
			}
}
		catch(Exception ex)
		{
			out.println(ex);
		}		

break;



case 2:
try {
	con=DbConnection.getConnection();
	st=con.createStatement();
	
	int i =st.executeUpdate("insert into retailer(name,password,dob,email,phne,address,status)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','0')");
			
			if(i!=0){
				response.sendRedirect("retailog.jsp?msg='registered'");
				
			}
			else{
				
				response.sendRedirect("retailreg.jsp?msg='failed'");
				
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
	
	int i =st.executeUpdate("insert into incharge(name,password,dob,email,phne,address,status)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','0')");
			
			if(i!=0){
				response.sendRedirect("inchargelog.jsp?msg='registered'");
				
			}
			else{
				
				response.sendRedirect("inchargereg.jsp?msg='failed'");
				
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
	
	int i =st.executeUpdate("insert into customer(name,password,dob,email,phne,address,status)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','1')");
			
			if(i!=0){
				response.sendRedirect("custlog.jsp?msg='registered'");
				
			}
			else{
				
				response.sendRedirect("custreg.jsp?msg='failed'");
				
			}
}
		catch(Exception ex)
		{
			out.println(ex);
		}		

break;


}
%>