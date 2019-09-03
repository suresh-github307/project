/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnection;

import java.sql.*;

/**
 *
 * @author DELL
 */
public class DBcon {
    static Connection con=null;
    static Statement s=null;
    public static Statement dbconn() throws ClassNotFoundException, SQLException{
            Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://node16866-env-8709064.cloudjiffy.net:3306/project","root","RHPeki68426");
            s=con.createStatement();
            return s;
    }
}
