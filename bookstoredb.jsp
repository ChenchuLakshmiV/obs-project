<%@page import="java.sql.*,java.util.*"%>
<%
  String g=request.getParameter("genre");
  String a=request.getParameter("author");
  String b=request.getParameter("bname");
  try{
		  Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/obs","chenchu","obs");
		  PreparedStatement ps=conn.prepareStatement("insert into CHENCHU.BOOKS values(?,?,?)") ; 
		  ps.setString(1,b);
		  ps.setString(2,a);
		  ps.setString(3,g);
		  
		  int i=ps.executeUpdate(); /*Set the Update query command */ 
		  if(i>0){
                      response.sendRedirect("storebooks.jsp"); 
                  }
                                   else{
                                        out.println("error in inserting the data");
                                   }
		  conn.close();

		  
	  }
	  catch(Exception e)
	  {
		  out.println(e);
	  }
  
  
  
  
  
  
  %>