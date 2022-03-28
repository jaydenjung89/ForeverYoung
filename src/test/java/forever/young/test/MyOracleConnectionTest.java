package forever.young.test;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;

public class MyOracleConnectionTest {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://fywebserver.cbviprw8fmb3.ap-northeast-2.rds.amazonaws.com:3306/";
	private static final String ID = "admin";
	private static final String PASS = "foreveryoung";

	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);
		try (Connection conn = DriverManager.getConnection(URL, ID, PASS)) {
			System.out.println(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}