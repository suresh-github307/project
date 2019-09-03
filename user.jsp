<%-- 
    Document   : user
    Created on : Jun 5, 2019, 11:56:24 AM
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
            String a=(String)session.getAttribute("user");
        %>
        <h1>Welcome <%=a%></h1>
        <a href="SearchBook.jsp">SearchBook</a><br>
    </body>
</html>
