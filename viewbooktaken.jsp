    <%@page import="java.sql.ResultSet"%>
<%@page import="Model.DAO"%>
<%-- 
    Document   : ViewBookTaken
    Created on : Jun 6, 2019, 12:38:48 PM
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
        <h1>Viewing Taken Books</h1>
        <form>
            <table>
                <tr>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>BookId</th>
                    <th>YearOfPublication</th>
                    <th>email</th>
                </tr>
            <%
                try{
            Model.DAO dao=new DAO();
            ResultSet res3=dao.vbkt();
            if(res3.next())
            {
               
  
        %>
        <tr>
            
            <td>  <%=res3.getString(1)%></td>
          
            <td> <%=res3.getString(2)%></td>
          
            <td> <%=res3.getString(3)%></td>
          
            <td> <%=res3.getString(4)%></td>
            
            <td> <%=res3.getString(5)%></td>
            </tr>
            <%
            }
}
catch(Exception e){
out.println(e);
}
            %>
            </table>
        </form>
    </body>
</html>
