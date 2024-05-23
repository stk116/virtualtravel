package virtualtravel;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class DBTestServlet extends HttpServlet{
        public void doGet(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException{
                request.setCharacterEncoding("Windows-31J");
                HttpSession session = request.getSession();
                String username =(String) session.getAttribute("username");
                String forwardURL = null;
                String tour=null;
                String fav = null;

		 @SuppressWarnings("unchecked")
		 ArrayList<Integer> arr = (ArrayList<Integer>) session.getAttribute("ArrayList");

			if (arr == null) {
			    arr = new ArrayList<Integer>();
			    session.setAttribute("ArrayList", arr);
			}


                try {
                    request.setAttribute("username", username);
                    tour=DBManagerT.complexSearch((Integer) session.getAttribute("r"));
                    fav = DBManagerF.FavoriteSearch(tour, username);
                    if (fav == null) {
                    int result=DBManagerT.insert(username,tour);
                    if(result <1) {
                        forwardURL = "/jsp/title.jsp";
                    }else {
                    	if(arr.size() == 12) {
                    		DBManagerT.setC(username);
                    		arr.clear();
                    		forwardURL = "/jsp/sample.jsp";
                    	}else {
                    		forwardURL = "/jsp/tournoowari.jsp";
                    	}
                    }}else {
                    	int result=DBManagerT.insert2(username,tour,fav);
                        if(result <1) {
                            forwardURL = "/jsp/title.jsp";
                        }else {
                        	if(arr.size() == 12) {
                        		DBManagerT.setC(username);
                        		arr.clear();
                        		forwardURL = "/jsp/sample.jsp";
                        	}else {
                        		forwardURL = "/jsp/tournoowari.jsp";
                        	}
                    }
                    }}catch (SQLException e) {
                        e.printStackTrace();
                    }
                    if (forwardURL != null) {
                        request.getRequestDispatcher(forwardURL).forward(request, response);
                    } else {
                        // forwardURLがNullの場合にエラー処理を行う
                        // 例えばエラーページにリダイレクトするなど
                        response.sendRedirect("/jsp/title.jsp");
                    }
        }
}
