package packag;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider
{
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		//String url="jdbc:mysql://localhost:3306/ospjsp";
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","admin");
		return con;
	} catch (Exception e) {
		System.out.println(e);
		return null;
	}
		
	}

}