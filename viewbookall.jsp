<%-- 
    Document   : ViewBookAll
    Created on : Jun 6, 2019, 12:18:45 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Model.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Viewing All Available Books</h1>
        <form>
            <table>
                <tr>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>BookId</th>
                    <th>YearOfPublication</th>
                </tr>
            <%
                try{
            Model.DAO dao=new DAO();
            ResultSet res2=dao.vbka();
            while(res2.next())
            {
               
  
        %>
        <tr>
            
            <td>  <%=res2.getString(1)%></td>
          
            <td> <%=res2.getString(2)%></td>
          
            <td> <%=res2.getString(3)%></td>
          
            <td> <%=res2.getString(4)%></td>
            
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
