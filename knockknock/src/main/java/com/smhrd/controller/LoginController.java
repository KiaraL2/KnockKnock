package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CustomerDTO;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.SellerDTO;

public class LoginController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String clientType = request.getParameter("clientType");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if (clientType.equals("customer")) {
			CustomerDTO custDTO = new CustomerDTO(id, pw);
			CustomerDTO userInfo = new MemberDAO().custLogin(custDTO);
			if (userInfo != null) {
				System.out.println("userInfo : " + userInfo);
				System.out.println("로그인 성공");

				HttpSession session = request.getSession();
				session.setAttribute("userInfo", userInfo.getCust_no());
			} else {
				System.out.println("로그인 실패");
			}
			response.sendRedirect("Main.jsp");

		} else {
			SellerDTO sellerDTO = new SellerDTO(id, pw);
			SellerDTO userInfo = new MemberDAO().sellerLogin(sellerDTO);
			if (userInfo != null) {
				System.out.println("userInfo : " + userInfo.getSeller_no());
				System.out.println("로그인 성공");

				HttpSession session = request.getSession();
				session.setAttribute("userInfo", userInfo);
			} else {
				System.out.println("로그인 실패");
			}
			response.sendRedirect("Main.jsp");

		}

	}

}
