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
				int status = 0;

				HttpSession session = request.getSession();
				String username = (String)session.getAttribute("username");


				try {

					status = DBManagerT.getC(username);
					session.setAttribute("status", status);

					DBManagerF.simpleUpdateDate();

					hisList = new ArrayList<String>();
					dateList = new ArrayList<String>();

					hisList = DBManagerF.getHisList(username);
					dateList = DBManagerF.getDateList(username);
					forwardURL = "/jsp/history.jsp";
				} catch (SQLException e) {

					e.printStackTrace();
				}
				request.setAttribute("hisList", hisList);
				session.setAttribute("hisList",hisList);
				request.setAttribute("dateList", dateList);
				session.setAttribute("dateList", dateList);

				for (int i = hisList.size()-1; i >= 0; i--) {
					String check = null;
					@SuppressWarnings("unchecked")
					String tour = ((List<String>) session.getAttribute("hisList")).get(i);
					try {
						check = DBManagerF.FavoriteSearchFirst(tour,username);
					} catch (SQLException e) {
						e.printStackTrace();
					}
					if(check == null) {
						try {
							check = DBManagerF.FavoriteSearch(tour, username);
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
					session.setAttribute("checkbox_value" + i, check);
				}

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