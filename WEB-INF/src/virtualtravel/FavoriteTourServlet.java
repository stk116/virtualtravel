package virtualtravel;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FavoriteTourServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");

			HttpSession session = request.getSession();

			String forwardURL = null;

			String tour = null;
			String explane = null;
			tour = request.getParameter("param");


			int r = 0;
			try {
				r = DBManagerF.tourSearch(tour);
				session.setAttribute("r", r);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			try {
				tour = DBManagerT.complexSearch(r);
				explane = DBManagerT.complexSearch1(r);
				forwardURL = "/jsp/tourstart.jsp";
			} catch (SQLException e) {

				e.printStackTrace();
			}
			request.setAttribute("tour",tour);
			request.setAttribute("explane", explane);
	        request.getRequestDispatcher(forwardURL).forward(request, response);
}
}
