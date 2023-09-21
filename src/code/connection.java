package code;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 * Servlet implementation class DbConnectionUtility
 */
public class connection {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		myconnection();
	}


public static  Connection myconnection()
{
	Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("classes loaded");
		
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3307/onlineuniversity", "root", "root");
			System.out.println("Connected");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	 }
		return con;
		
	
	}

}