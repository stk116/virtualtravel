package virtualtravel;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TourServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");


				String tour = null;
				String explane = null;
				String forwardURL = null;

				int r = new java.util.Random().nextInt(3);
				r = r+1;

				try {
					tour = DBManagerT.complexSearch(r);
					explane = DBManagerT.complexSearch1(r);
					forwardURL = "/jsp/tourstart.jsp";
				} catch (SQLException e) {

					e.printStackTrace();
				}
				request.setAttribute("tour",tour);
				request.setAttribute("explane", explane);
				if (forwardURL != null) {
		            request.setAttribute("tour", tour);
		            request.setAttribute("explane", explane);
		            request.getRequestDispatcher(forwardURL).forward(request, response);
		        } else {
		            // forwardURLがNullの場合にエラー処理を行う
		            // 例えばエラーページにリダイレクトするなど
		            response.sendRedirect("/title.jsp");
		        }


	}

}
