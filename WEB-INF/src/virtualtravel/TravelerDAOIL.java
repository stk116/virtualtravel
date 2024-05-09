package virtualtravel;

import java.sql.SQLException;

public class TravelerDAOIL {
	public static int insert(TravelerBeanIL tbean) throws SQLException{
		String sql = "INSERT INTO T_USER"
				+ "(USERNAME, PASS) VALUES(" +
				"'" + tbean.getUsername() + "', "+
				"'" + tbean.getPass()+ "'" + ")";
		return DBManagerIL.simpleUpdate(sql);
	}

	public static int search(TravelerBeanIL tbean) throws SQLException{
		String sql = "SELECT * FROM T_USER "+
				"WHERE USERNAME='" + tbean.getUsername() + "' " +
				"AND PASS='" + tbean.getPass() + "'";

		return DBManagerIL.simpleSearch(sql);
	}

}
