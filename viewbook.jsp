<%-- 
    Document   : ViewBook
    Created on : Jun 5, 2019, 3:19:52 PM
    Author     : DELL
--%>

<%@page import="Model.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="TakeBookserv" method="post">
            <table>
                <tr>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>BookId</th>
                    <th>YearOfPublication</th>
                </tr>
            <%
                try{
            String v=(String)session.getAttribute("bid");
            Model.DAO dao=new DAO();
            ResultSet res1=dao.vbk(v);
            if(res1.next())
            {
               
  
        %>
        <tr>
            
            <td> <input type="text" name="vb1" value="<%=res1.getString(1)%>"></td>
          
            <td><input type="text" name="vb2" value="<%=res1.getString(2)%>"></td>
          
            <td><input type="text" name="vb3" value="<%=res1.getInt(3)%>"></td>
          
            <td><input type="text" name="vb4" value="<%=res1.getString(4)%>"></td>
            
            
            </tr>
            <%
            }
}
catch(Exception e){
out.println(e);
}
            %>
            </table>
            <button>take</button>
        </form>
    </body>
</html>
