<%@page import="java.sql.*,java.util.*"%>
<%@page import="javax.swing.JOptionPane"%>
<%
  String id=request.getParameter("uid");
  String pass=request.getParameter("password");
  try{
      Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/obs","chenchu","obs");
      String chk="select * from CHENCHU.OBS where uid=?";
      PreparedStatement ps=conn.prepareStatement(chk);
      ps.setString(1,id);
      
      ResultSet rs=ps.executeQuery();
      if(rs.next()){
          String password=rs.getString("pass");
                if(pass.equals(password)){
                   
                     response.sendRedirect("storebooks.jsp?welcomeback "+id);
                }else{
                    out.println("invalid password <a href='login.jsp'>try again</a>");
                   //request.setAttribute("errorMessage","Invalid password");
                   //response.sendRedirect("firstpage1.jsp");
                }
                
      }else{
          out.println("invalid UserId <a href='login.jsp'>try again</a>");
          //request.setAttribute("errorMessage","Invalid UserId");
         // response.sendRedirect("firstpage1.jsp");
      }
      ps.close();
      rs.close();
      }
   catch(Exception e){   
       JOptionPane.showMessageDialog(null,e);
             }
  %>