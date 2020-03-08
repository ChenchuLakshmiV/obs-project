<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
 #body{
    background-color:yellow;
    font-size:20px;
    
 }
</style>
<title>Online Book Store</title>
</head>
<body id="body">
  <h1 align="center">only for bibliophile</h1>
  <form action="validate.jsp">
  <table align="center">
    <tr><td>userId :</td><td><input type="text"name="uid"></td></tr>
    <tr><td>password :</td><td><input type="password"name="password"placeholder="********"></td></tr>
    <tr><td><input type="submit"name="submit"value="login"></td> <td><input type="button"value="Register"onClick="JavaScript:window.location='Register.jsp';"></td></tr>
    <tr><td><input type="reset"></td></tr>
    <tr><td><input type="button"value="Admin"onClick="JavaScript:window.location='adminlogin.jsp';"></td></tr>
   </table>
  </form>
  
</body>
</html>