<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adminlogin</title>
    </head>
    <body>
        <form action="validateadmin.jsp">
            <table align="center">
                <tr>
                    <td>userId :<input type="text"name="uid"value="admin"></td>
                </tr>
                <tr>
                    <td>password : <input type="password"name="password"placeholder="********"></td>
                </tr>
                <tr>
                    <td><input type="submit"value="SUBMIT"></td>
                </tr>
                </table>
        </form>
    </body>
</html>
