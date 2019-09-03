<%-- 
    Document   : validate
    Created on : Jun 2, 2019, 11:35:43 AM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%  
        String a=request.getParameter("t1");
        String b=request.getParameter("t2");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
        Statement s=con.createStatement();
        s.executeUpdate("insert into olduser values('"+a+"','"+b+"')");
        ResultSet rs=s.executeQuery("select * from olduser");
        while(rs.next())
        {
            System.out.println(rs.getString(1)+rs.getString(2));
        }
            %>
    </body>
</html>
