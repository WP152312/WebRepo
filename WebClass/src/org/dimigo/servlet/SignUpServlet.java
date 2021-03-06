/**
 * 
 */
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
 * <pre>
 *org.dimigo.servlet
 *     _SignUpServlet
 *
 * 1. 개요 :
 * 2. 작성일 :2017. 9. 28.
 *</pre>
 *
 * @author : ajszl
 * @version : 1.0
 */
@WebServlet("/signup")
public class SignUpServlet {
	
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pwd");
		String name=request.getParameter("name");
		String nickname=request.getParameter("nickname");
		boolean result=false;
		if(id.equals("asdf@asdf")&&pw.equals("asdf")){
			result=true;
		}
		HttpSession session=request.getSession();
		if(result){
			UserVo ud=new UserVo();
			ud.setId(id);
			ud.setName("asdf");
			ud.setNickname("asdf");
			session.setAttribute("key",ud);
			RequestDispatcher rd=request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request,response);
		}
		else{
			request.setAttribute("error",1);
			RequestDispatcher rd=request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
	}
	
	
	

}
