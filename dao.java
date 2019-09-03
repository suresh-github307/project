/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import java.sql.*;
public class DAO {

    public int reg(String fn, String ln, String g, String e, String p, String ph, String a, String r) throws ClassNotFoundException, SQLException {
        int status=0;
       Statement s= dbconnection.DBcon.dbconn();
       status=s.executeUpdate("insert into user_details values('"+fn+"','"+ln+"','"+g+"','"+e+"','"+p+"','"+ph+"','"+a+"','"+r+"')");
       return status;
    }

    public ResultSet log(String un, String pw) throws ClassNotFoundException, SQLException {
        ResultSet rs=null;
        Statement s= dbconnection.DBcon.dbconn();
        rs=s.executeQuery("select * from user_details where email='"+un+"' and password='"+pw+"'");
        return rs;
    }    
    public int addbook(String Bn, String An, String Bi, String Yop) throws ClassNotFoundException, SQLException {
        int result=0;
        Statement s=dbconnection.DBcon.dbconn();
        result=s.executeUpdate("insert into addbook values('"+Bn+"','"+An+"','"+Bi+"','"+Yop+"')");
        return result;
    }

    public ResultSet sbk(String bn, String an) throws ClassNotFoundException, SQLException {
        ResultSet rs1=null;
        Statement s=dbconnection.DBcon.dbconn();
        rs1=s.executeQuery("select * from addbook where BookName='"+bn+"' and AuthorName='"+an+"'");
        return rs1;
    }
    
    public ResultSet vbk(String v) throws ClassNotFoundException, SQLException {
        ResultSet rs1=null;
        Statement s=dbconnection.DBcon.dbconn();
        rs1=s.executeQuery("select * from addbook where BookId='"+v+"'");
        return rs1;
    }

    public int tbk(String tbs1, String tbs2, String tbs3, String tbs4, String tbs5) throws ClassNotFoundException, SQLException {
        int value=0;
        Statement s=dbconnection.DBcon.dbconn();
        value=s.executeUpdate("insert into takebook values('"+tbs1+"','"+tbs2+"','"+tbs3+"','"+tbs4+"','"+tbs5+"')");
        return value;
    }
    public ResultSet vbka() throws ClassNotFoundException, SQLException
    {
        ResultSet rs2=null;
        Statement s=dbconnection.DBcon.dbconn();
        rs2=s.executeQuery("select * from addbook");
        return rs2;
    }
    public ResultSet vbkt() throws ClassNotFoundException, SQLException
    {
        ResultSet rs3=null;
        Statement s=dbconnection.DBcon.dbconn();
        rs3=s.executeQuery("select * from takebook");
        return rs3;
    }
}
