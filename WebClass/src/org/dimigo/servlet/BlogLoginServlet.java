package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pwd"); 	
		boolean result=false;
		if(id.equals("test@naver.com")//&&pw.equals("required")
				){
			result=true;
		}
		HttpSession session=request.getSession();
		UserVo ud=new UserVo();
		ud.setId(id);
		ud.setName("박정우");
		ud.setNickname("박정우");
		session.setAttribute("key",ud);
		if(result){
			RequestDispatcher rd=request.getRequestDispatcher("jsp/main.jsp");
			rd.forward(request,response);
		}
		else{
			request.setAttribute("error",1);
			RequestDispatcher rd=request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		}
	}

}
