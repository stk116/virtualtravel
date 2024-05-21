package virtualtravel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBManagerF {
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
	public static List<String> getHisList(String username) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;


		// String sqlHis = "SELECT his FROM t_history WHERE USERNAME='" + username + "'";
		String sqlHis = "SELECT his FROM t_history WHERE USERNAME='" + username + "' ORDER BY Date DESC";

		List<String> hisList = new ArrayList<String>();

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sqlHis);

			while(rs.next()) {
					hisList.add(rs.getString("his"));

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
		return hisList;


	}


	public static List<String> getDateList(String username) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;


		String sqlHis = "SELECT date FROM t_history WHERE USERNAME='" + username + "'ORDER BY Date DESC";

		List<String> dateList = new ArrayList<String>();

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sqlHis);

			while(rs.next()) {
				dateList.add(rs.getString("date"));

				/*			 dateList = (List<String>) rs.getArray("date");*/
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
		return dateList;


	}

	public static void simpleUpdateFav(String  checked, String tour, String username) throws SQLException{

		Connection con = null;
		Statement smt = null;


		String sql = "update t_history set fav='" + checked + "' where username ='" + username + "' and his='" + tour + "'";


		try {
			con = getConnection();
			smt = con.createStatement();
			smt.executeUpdate(sql);

		}finally {
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
	}

	public static void simpleUpdateNull(String tour, String username) throws SQLException{

		Connection con = null;
		Statement smt = null;


		String sql = "update t_history set fav='null' where username = '" + username + "' and his='" + tour + "'";


		try {
			con = getConnection();
			smt = con.createStatement();
			smt.executeUpdate(sql);

		}finally {
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
	}

	public static void simpleUpdateDate() throws SQLException{

		Connection con = null;
		Statement smt = null;


		String sql = "select * from t_history order by date asc";


		try {
			con = getConnection();
			smt = con.createStatement();
			smt.executeQuery(sql);

		}finally {
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
	}

	public static String FavoriteSearch(String tour, String username) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;
		String favorite = null;


		String sql = "SELECT FAV FROM T_HISTORY WHERE USERNAME='" + username + "' and HIS='" + tour +
				"' order by date desc limit 1";

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			favorite = rs.getString("fav");
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

		return favorite;
	}

	public static String FavoriteSearchFirst(String tour, String username) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;
		String favorite = null;


		String sql = "SELECT FAV FROM T_HISTORY WHERE USERNAME='" + username + "' and HIS='" + tour +
				"' order by date desc limit 1 offset 1";

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			favorite = rs.getString("fav");
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

		return favorite;
	}

	public static int tourSearch(String tour) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;
		int tourNumber = 0;


		String sql = "SELECT NO FROM T_TOUR WHERE TOUR='" + tour +  "'";

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			tourNumber = rs.getInt("no");
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

		return tourNumber;
	}


	}

