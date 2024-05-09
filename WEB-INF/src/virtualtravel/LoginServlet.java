package virtualtravel;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");
			String username = request.getParameter("username");
			String pass = request.getParameter("pass");


			String forwardURL = null;
			try {
				TravelerBeanIL tbean = new TravelerBeanIL(username, pass);
				int updateCount = TravelerDAOIL.search(tbean);

				if (updateCount >= 1) {
					forwardURL = "/jsp/loginsuccess.jsp";
				}else {
					forwardURL = "/jsp/loginerror.jsp";
				}
			}catch (NumberFormatException e) {
				e.printStackTrace();
				forwardURL = "/jsp/loginerror.jsp";
			}catch (SQLException e) {
				e.printStackTrace();
				forwardURL = "/jsp/loginerror.jsp";
			}

			request.getRequestDispatcher(forwardURL).forward(request,response);


}
}
