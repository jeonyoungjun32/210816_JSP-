
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionLoginServlet
 */
@WebServlet("/sessionLogin")
public class 별별_SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public 별별_SessionLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		request.setCharacterEncoding("utf-8"); // 1

		response.setContentType("text/html;charset=utf-8");// 2
		PrintWriter out = response.getWriter();// 3

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		// 아이디(java)와 비밀번화(java)가 java이면 인증되었다면 가정하고
		// 143p 개어렵네 ㅅㅂ
		if (id.equals("java") && passwd.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);

			// 다른곳으로 이동해서 처ㅏ리한다
			// request요청을 처리하도록 menu.jsp간다 . Dispatcher방식으로 포워딩 이라 불린다
			RequestDispatcher dispatcher = request.getRequestDispatcher("★menu.jsp");
			dispatcher.forward(request, response);//받은 그대로 보낸다 누구한데? menu.jsp한테!
			//아이디비번이 맞으면 menu.jsp에 다시가서 처리한다 

		}else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

	}

}
