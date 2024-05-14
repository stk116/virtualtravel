package virtualtravel;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class RegistServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");
			String username = request.getParameter("username");
			String pass = request.getParameter("pass");


			String forwardURL = null;

			if(pass.length() < 8) {
				request.setAttribute("errorMessageLog", "パスワードが短いです");
				forwardURL = "/jsp/registerror.jsp";
			}else {
			try {
				TravelerBeanIL tbean = new TravelerBeanIL(username, pass);
				int updateCount = TravelerDAOIL.insert(tbean);

				if (updateCount < 1) {
					forwardURL = "/jsp/registerror.jsp";
				}else {
					forwardURL = "/jsp/registsuccess.jsp";
				}
			}catch (NumberFormatException e) {
				e.printStackTrace();
				forwardURL = "/jsp/registerror.jsp";
			}catch (SQLException e) {
				e.printStackTrace();
				request.setAttribute("errorMessageUsername", "既に存在するユーザー名です");
				forwardURL = "/jsp/registerror.jsp";
			}
			}

			request.getRequestDispatcher(forwardURL).forward(request,response);

	}
}
