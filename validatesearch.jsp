<%@page import="java.sql.*,java.util.*"%>
<%
  
  String b=request.getParameter("bn");
  String a=request.getParameter("auth");
  String g=request.getParameter("gen");
  try{
		  Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/obs","chenchu","obs");
		  String chk="select * from CHENCHU.BOOKS where bname=?";
                  PreparedStatement ps=conn.prepareStatement(chk);
		  ps.setString(1,b);
                  ResultSet rs=ps.executeQuery();
                  if(rs.next()){
                       String an=rs.getString("author");
                       if(a.equalsIgnoreCase(an)){
                           String gn=rs.getString("genre");
                           if(g.equalsIgnoreCase(gn)){
                               out.println("<html><body bgcolor='orange'>");
                               out.println("<h1><i>book is available in the store,kindly come and collect it since our door delivery is currently not available</i></h1>");
                               out.println("<h2><i>goto contact page for further information <a href='contact.jsp'><b>contact lucas</b></i></h2>");
                               out.println("<br><br><br><br><br><footer><i>copyright 1999-2020 by Data info</i></footer>");
                               out.println("</body></html>");
                                                        }                                                                                         
                           
                            else{
                                out.println("<i>invalid genre and author name for this book<br><a href='home.jsp'>try again</i>");
                                out.println("<footer><i>copyright 1999-2020 by Data info</i></footer>");                                                                                                                                
                                                      }
                                                                              
                       }
                                        }
                  
                  
                                   else{
                                      out.println("<i>this book is currently not available in the store! try again after few days <br><a href='home.jsp'>try again</i>");
                                                                        }
                  conn.close();                                                                                   
                         }                                                                         
  catch(Exception e)
                   {
       out.println(e);
             }
  %>                