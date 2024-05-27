package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("[LogoutCon]");
		
		HttpSession session = request.getSession();
		session.removeAttribute("userInfo");
		System.out.println("로그아웃 성공");
		
		// Main.jsp로 이동
		response.sendRedirect("Main.jsp");
	}

}
