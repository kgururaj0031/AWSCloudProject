package databaseconnection;
import java.sql.*;

public class databasecon
{
	
	static Connection con;
	public Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carmor","root","");
			//To Connect to AWS use the connection name : carmor.cas0csn8m229.ca-central-1.rds.amazonaws.com
			//username : cloudproject
			//password : cloudproject
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
	
}
