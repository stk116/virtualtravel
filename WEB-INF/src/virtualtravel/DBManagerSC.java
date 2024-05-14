package virtualtravel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManagerSC {
	public static Connection getConnection() throws SQLException{
		try {
						Class.forName("org.postgresql.Driver");
						Connection con = DriverManager.getConnection(
								"jdbc:postgresql://52.195.46.205:5432/Vagabondsdb",
								"postgres","postgres");
			/*						Class.forName("org.postgresql.Driver");
									Connection con = DriverManager.getConnection(
											"jdbc:postgresql://localhost:5432/vagabonds",
											"postgres", "postgres");*/
			return con;
		}catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}
	}



	public static String[] getContents(int r, int s) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;


		String sql = "SELECT * FROM t_screen" + s + " WHERE NO='" + r + "'";

		String[] contents;
		contents = new String[5];

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			contents[0] = rs.getString("name" + s);
			contents[1] = rs.getString("pic" + s);
			contents[2] = rs.getString("text" + s);
			contents[3] = rs.getString("place" + s);
			contents[4] = rs.getString("link" + s);

			}

		}finally {
			if (rs != null) {
				try {
				rs.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
			if (smt != null) {
				try {
					smt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return contents;


	}

/*	public static String[] getContents2(int r) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;


		String sql = "SELECT * FROM t_screen2 WHERE NO='" + r + "'";

		String[] contents;
		contents = new String[5];

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			contents[0] = rs.getString("name2"); //データベースの変数名変えればどこでもいけるかも
			contents[1] = rs.getString("pic2");  //数字なしも後で試す
			contents[2] = rs.getString("text2");
			contents[3] = rs.getString("place2");
			contents[4] = rs.getString("link2");

			}

		}finally {
			if (rs != null) {
				try {
				rs.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
			if (smt != null) {
				try {
					smt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return contents;


	}

	public static String[] getContents3(int r) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;


		String sql = "SELECT * FROM t_screen3 WHERE NO='" + r + "'";

		String[] contents;
		contents = new String[5];

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			contents[0] = rs.getString("name3"); //データベースの変数名変えればどこでもいけるかも
			contents[1] = rs.getString("pic3");  //数字なしも後で試す
			contents[2] = rs.getString("text3");
			contents[3] = rs.getString("place3");
			contents[4] = rs.getString("link3");

			}

		}finally {
			if (rs != null) {
				try {
				rs.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
			if (smt != null) {
				try {
					smt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return contents;


	}

*/





}
