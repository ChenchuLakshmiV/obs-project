<%@page import="java.sql.*,java.util.*"%>
<%
  String id=request.getParameter("userId");
  String name=request.getParameter("username");
  String pass1=request.getParameter("password1");
  String pass2=request.getParameter("password2");
  if(pass1.equals(pass2))
  {
	  try{
		  Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/obs","chenchu","obs");
		  PreparedStatement ps=conn.prepareStatement("insert into CHENCHU.OBS values(?,?,?)") ; 
		  ps.setString(1,id);
		  ps.setString(2,name);
		  ps.setString(3,pass1);
		  
		  int i=ps.executeUpdate(); /*Set the Update query command */ 
		  if(i>0){
                      response.sendRedirect("firstpage1.jsp?msg=Thank You for registering with us in Mrbool !"); 
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
  }
  else
	  out.println("password not matching");
 %>