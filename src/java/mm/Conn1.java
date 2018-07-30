/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mm;

/**
 *
 * @author Administrator
 */
import java.sql.*;

public class  Conn1
{

private Connection con;
private Statement st;
public ResultSet rs,r,rs1,t,t1;
public Conn1()
	{
	try{
	       Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection("jdbc:mysql:///tourandtravel", "root","123");
	       st=con.createStatement();

		System.out.println("connected Conn ");
		}
	catch(Exception e){
		System.out.println("Sorry Error Conn"+e);
		}
	}

public ResultSet executeQuery(String sql) throws SQLException
	{
	return st.executeQuery(sql);
	}
public int executeUpdate(String sql) throws SQLException
	{
	return st.executeUpdate(sql);
	}
}
