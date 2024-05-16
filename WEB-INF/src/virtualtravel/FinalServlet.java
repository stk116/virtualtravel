package virtualtravel;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FinalServlet extends HttpServlet{


	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");

				List<String> hisList = null;
				List<String> dateList = null;

				String forwardURL = null;

				HttpSession session = request.getSession();
				String username = (String)session.getAttribute("username");

				try {

					hisList = new ArrayList<String>();
					dateList = new ArrayList<String>();

					hisList = DBManagerF.getHisList(username);
					dateList = DBManagerF.getDateList(username);
					forwardURL = "/jsp/history.jsp";
				} catch (SQLException e) {

					e.printStackTrace();
				}
				request.setAttribute("hisList", hisList);
				request.setAttribute("dateList", dateList);

				if (forwardURL != null) {
					request.setAttribute("hisList", hisList);
					request.setAttribute("dateList", dateList);
		            request.getRequestDispatcher(forwardURL).forward(request, response);
		        } else {
		            // forwardURLがNullの場合にエラー処理を行う
		            // 例えばエラーページにリダイレクトするなど
		            response.sendRedirect("/title.jsp");
		        }


	}




	}