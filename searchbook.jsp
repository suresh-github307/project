<%-- 
    Document   : SearchBook
    Created on : Jun 5, 2019, 1:24:16 PM
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
        <h1>Enter Book Details</h1>
        <form action="SearchBookserv" action="post">
            BookName:<br>
            <input type="text" name="sb1"><br>
            AuthorName:<br>
            <input type="text" name="sb2"><br>
            <button>submit</button>
        </form>
    </body>
</html>
