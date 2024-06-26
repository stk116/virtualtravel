package virtualtravel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManagerT {
	public static Connection getConnection() throws SQLException{
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:postgresql://52.195.46.205:5432/Vagabondsdb",
					"postgres","postgres");
			return con;
		}catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}
	}

	public static int Random() {
		int r = 0;
		r= new java.util.Random().nextInt(12) + 1;
		return r;
	}

	public static String complexSearch(int r) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;
		String tourName = null;


		String sql = "SELECT TOUR FROM T_TOUR WHERE NO='" + r +  "'";

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			tourName = rs.getString("tour");
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

		return tourName;
	}

	public static String complexSearch1(int r) throws SQLException{

		Connection con = null;
		Statement smt = null;
		ResultSet rs = null;
		String explane = null;


		String sql = "SELECT EXPLANE FROM T_TOUR WHERE NO='" + r +  "'";

		try {
			con = getConnection();
			smt = con.createStatement();
			rs = smt.executeQuery(sql);

			while(rs.next()) {
			explane = rs.getString("explane");
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

		return explane;
	}






public static int insert(String username ,String tour) throws SQLException{
    Connection con = null;
    Statement smt = null;
    String sql = "INSERT INTO T_HISTORY (USERNAME, HIS ,DATE,FAV) VALUES('"+username+"','"+tour+
    		"',to_char(current_timestamp, 'YYYY/MM/DD HH24:MI:SS'),'null')";
    try {
        con = getConnection();
        smt = con.createStatement();
        return smt.executeUpdate(sql);
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

public static int insert2(String username, String tour, String fav) throws SQLException{

	Connection con = null;
	Statement smt = null;

	String sql = "insert into t_history (username,his,date,fav) values('"+ username + "','"+ tour
			+ "',to_char(current_timestamp, 'YYYY/MM/DD HH24:MI:SS'),'" + fav + "')";

	try {
		con = getConnection();
		smt = con.createStatement();
		return smt.executeUpdate(sql);
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

public static int setC(String username) throws SQLException{
    Connection con = null;
    Statement smt = null;
    String sql = "UPDATE T_USER SET STATUS = 1 WHERE USERNAME = '" + username + "'";

    try {
    	con = getConnection();
        smt = con.createStatement();
        return smt.executeUpdate(sql);
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

public static int getC(String username) throws SQLException{
	Connection con = null;
    Statement smt = null;
    ResultSet rs = null;
    int c = 0;

    String sql= "SELECT STATUS FROM T_USER WHERE USERNAME = '" + username + "'";


    try {
        con = getConnection();
        smt = con.createStatement();
        rs = smt.executeQuery(sql);

	while(rs.next()) {
	c = rs.getInt("status");
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

	return c;
}

}

