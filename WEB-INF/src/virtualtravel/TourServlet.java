package virtualtravel;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TourServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");

				HttpSession session = request.getSession(false);


				String tour = null;
				String explane = null;
				String forwardURL = null;

				@SuppressWarnings("unchecked")
				ArrayList<Integer> arr = (ArrayList<Integer>) session.getAttribute("ArrayList");

				// もしセッションにarrが存在しない場合は新しいリストを作成してセッションに保存
				if (arr == null) {
				    arr = new ArrayList<Integer>();
				    session.setAttribute("ArrayList", arr);
				}



		/*if(arr.size() == 12) {
			arr.clear();
		}*/
				int r = 0;

				r = DBManagerT.Random();
				while(arr.contains(r)) {
					r=DBManagerT.Random();
				}
				session.setAttribute("r", r);
				arr.add(r);

				System.out.println(arr);


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
