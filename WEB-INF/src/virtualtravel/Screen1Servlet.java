package virtualtravel;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Screen1Servlet extends HttpServlet{


	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");

				int s = 1;

				String name = null;
				String pic = null;
				String text = null;
				String place = null;
				String link = null;
				String forwardURL = null;

				HttpSession session = request.getSession();
				int r = (int) session.getAttribute("r");

				try {

					String[] contents = DBManagerSC.getContents(r,s);
					name = contents[0];
					pic = contents[1];
					text = contents[2];
					place = contents[3];
					link = contents[4];
					forwardURL = "/jsp/t_screen1.jsp";
				} catch (SQLException e) {

					e.printStackTrace();
				}
				request.setAttribute("name",name);
				request.setAttribute("pic",pic);
				request.setAttribute("text",text);
				request.setAttribute("place",place);
				request.setAttribute("link", link);
				if (forwardURL != null) {
					request.setAttribute("name",name);
					request.setAttribute("pic",pic);
					request.setAttribute("text",text);
					request.setAttribute("place",place);
					request.setAttribute("link", link);
		            request.getRequestDispatcher(forwardURL).forward(request, response);
		        } else {
		            // forwardURLがNullの場合にエラー処理を行う
		            // 例えばエラーページにリダイレクトするなど
		            response.sendRedirect("/title.jsp");
		        }


	}




	}
