package virtualtravel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionInvalidateServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		HttpSession session = request.getSession(false);

		if(session != null) {
			session.invalidate();
		}

		String forwardURL = null;
		try {

			if (session == null) {
				forwardURL = "/jsp/title.jsp";
			}else {
				forwardURL = "/jsp/title.jsp";
			}
		}catch (NumberFormatException e) {
			e.printStackTrace();
			forwardURL = "/jsp/title.jsp";
		}

		request.getRequestDispatcher(forwardURL).forward(request,response);

	}


}
