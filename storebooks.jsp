<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>store books </title>
    </head>
    <body>
        <form action="bookstoredb.jsp">
          <table align="center">
              <tr>   
                  <td>GENRE:      <input type="text"name="genre"></td>
              </tr>
              <tr>
                  <td>AUTHOR NAME:<input type="text"name="author"></td>
              </tr>         
              <tr>
                  <td>BOOK NAME:  <input type="text"name="bname"></td>
              </tr>  
              <tr>
                  <td><input type="submit"value="SAVE"></td>
              </tr>
              <tr>
                  <td><input type="reset"value="RESET"></td>
              </tr>
              <tr>
                  <td><input type="button"value="EXIT"onClick="JavaScript:window.location='firstpage1.jsp'"></td>
              </tr>
          </table>
        </form>
    </body>
</html>
