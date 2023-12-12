package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
//@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoginDao login = new LoginDao();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at : ").append(request.getContextPath());

		String uname = request.getParameter("uname");
		String password = request.getParameter("psw");

		boolean validateUser = login.checkUser(uname, password);

		if (validateUser) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			// Make JDBC connection and check user is present or not. If user present go to
			// welcome page else give stay to login page
			response.sendRedirect("Web-Pages/welcome.jsp");
		} else {
			response.setContentType("text/html");
			request.setAttribute("error", "true");
			request.getRequestDispatcher("Web-Pages/login.jsp").include(request, response);
//			response.sendRedirect("/LoginModule");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
