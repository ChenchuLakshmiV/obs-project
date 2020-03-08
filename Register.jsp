<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration</title>
</head>
<body bgcolor="yellow">
 <h5 align="center"><i>register here to read your favourite books</i></h5>
 <form method="post" action="storedata.jsp">
  <table align="center">
    <tr><td>userId :</td><td><input type="text"name="userId"></td></tr>
    <tr><td>username :</td><td><input type="text"name="username"></td></tr>
    <tr><td>password :</td><td><input type="password"name="password1"placeholder="*******"></td></tr>
    <tr><td>re-type password :</td><td><input type="password"name="password2"placeholder="*******"></td></tr>   
    <tr><td><input type="submit"name="register"value="Register"></td><td><input type="reset"></td></tr>
   </table>
  </form>
</body>
</html>
