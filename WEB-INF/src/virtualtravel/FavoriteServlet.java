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

public class FavoriteServlet extends HttpServlet{
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
			request.setCharacterEncoding("Windows-31J");

			HttpSession session = request.getSession();



			List<String> hisList = new ArrayList<String>();
			hisList = (List<String>) session.getAttribute("hisList");
			//hisList = (List<String>)request.getAttribute("hisList");
			String username = (String)session.getAttribute("username");




			for (int i = hisList.size()-1; i>=0; i--) {
			    String checkboxName = "checkbox_" + i; // チェックボックスの名前を直接使用
			    String checkboxValue = request.getParameter(checkboxName);// チェックボックスの値を取得
			    if(checkboxValue != null &&checkboxValue.equals("checked")) {
			    	try {
			    		String tour = ((List<String>) session.getAttribute("hisList")).get(i);
			    		System.out.println(tour);
						DBManagerF.simpleUpdateFav(checkboxValue, tour, username);
					} catch (SQLException e) {
						e.printStackTrace();
					}
			    }else {
			    	try {
			    		String tour = ((List<String>) session.getAttribute("hisList")).get(i);
			    		System.out.println(tour);
						DBManagerF.simpleUpdateNull(tour, username);
					} catch (SQLException e) {
						e.printStackTrace();
					}
			    }
			    //session.setAttribute("checkbox_value" + i, checkboxValue); // セッションにチェックボックスの値を保存
			}

			for (int i = hisList.size()-1; i >= 0; i--) {
				String check = null;
				String tour = ((List<String>) session.getAttribute("hisList")).get(i);
				try {
					check = DBManagerF.FavoriteSearch(tour,username);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				session.setAttribute("checkbox_value" + i, check);
			}


	        String forwardURL = null;
	        forwardURL = "/jsp/history.jsp";
	        request.getRequestDispatcher(forwardURL).forward(request, response);
	}
}
