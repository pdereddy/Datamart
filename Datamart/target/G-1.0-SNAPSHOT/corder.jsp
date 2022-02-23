<%@page import="com.db.Connection.DbConnection"%>
<%@page import="java.sql.*"%>

        
	 <%
	 
	 
	 String cname=(String)session.getAttribute("name");
	 
	 String address=null;
	 
	 
	 String id=request.getParameter("id");

	 Connection con=null;
	 Statement st=null;
	 ResultSet rs=null;
	 Statement st1=null;
	 Statement st2=null;
	 ResultSet rs1=null;
	 try {
				 
                    con = DbConnection.getConnection();

                    st = con.createStatement();
	st1 = con.createStatement();
							st2 = con.createStatement();
							rs1=st2.executeQuery("select * from customer where name='"+cname+"' ");
							
							if(rs1.next()){
								
								address=rs1.getString(7);
							
							
							
				rs=st.executeQuery("select * from product where id='"+id+"'");
					
                    while(rs.next()) {
				String sname=rs.getString(2);
				String pname=rs.getString(3);
				String price=rs.getString(6);
							
                      int i =st1.executeUpdate(" insert into orders(sname,cname,pnmae,price,caddress,subinch,retailer,admin,supplier) values('"+sname+"','"+cname+"','"+pname+"','"+price+"','"+address+"','0','0','0','0')  ");

					  if(i!=0){
						  
						  response.sendRedirect("cpview.jsp?msg='ordered'");
						  
					  }
					  else{
						  response.sendRedirect("cpview.jsp?msg='failed'");
						  
					  }
					}	  
				}
				}
				catch(Exception ex) 
				{
					System.out.println(ex);
                    response.sendRedirect("customerhome.jsp?msggg=failed");
                }
	 
	 
	 
	 
	 %>
	 