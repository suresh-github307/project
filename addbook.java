<%-- 
    Document   : AddBook
    Created on : Jun 5, 2019, 12:14:29 PM
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
        <h1>Enter Boook Details</h1>
        <form action="AddBookserv" method="post">
            BookName:<br>
            <input type="text" name="ad1"><br>
            AuthorName:<br>
            <input type="text" name="ad2"><br>
            BookId:<br>
            <input type="text" name="ad3"><br>
            YearOfPublication:<br>
            <input type="text" name="ad4"><br>
            <button>submit</button>
        </form>
    </body>
</html>
