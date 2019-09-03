<%-- 
    Document   : admin
    Created on : Jun 5, 2019, 12:04:45 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String a=(String)session.getAttribute("admin");
        %>
        <h1>Welcome <%=a%></h1>
        <a href="AddBook.jsp">AddBook</a><br>
        <a href="ViewBookAll.jsp">ViewAllBooks</a><br>
        <a href="ViewBookTaken.jsp">ViewBookTaken</a>        
    </body>
</html>
