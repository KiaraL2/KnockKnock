package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CustomerDTO;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.SellerDTO;

public class JoinController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[JoinController]");

		request.setCharacterEncoding("UTF-8");

		String joinType = request.getParameter("clientType");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String[] emailArr = request.getParameterValues("email");
		String[] phoneArr = request.getParameterValues("phone");
		String[] addressArr = request.getParameterValues("address");
		String[] registNumArr = request.getParameterValues("registNum");
		String email = "";
		String phone = "";
		String address = "";
		String registNum = "";
		for (int i = 0; i < emailArr.length; i++) {
			email += emailArr[i];
			phone += phoneArr[i] + "-";
			address += addressArr[i];
			registNum += registNumArr[i] + "-";

			if (i == 0) {
				address += ",";
			}
			if (i == 1) {
				phone += phoneArr[2];
				registNum += registNumArr[2];

			}
		}

//		일반고객
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");

//		판매자
		String offline = request.getParameter("offline");
		String homeUrl = request.getParameter("homeUrl");

		int row = 0;
		if ("seller".equals(joinType)) {
			System.out.println(joinType);
			SellerDTO sellerDTO = new SellerDTO(address, email, id, nick, offline, phone, pw, registNum, homeUrl);
			System.out.println(sellerDTO.toString());
			row = new MemberDAO().sellerJoin(sellerDTO);
		}else {
			System.out.println(joinType);
			CustomerDTO custDTO = new CustomerDTO(id, pw, nick, address, email, phone, gender, birth);
			System.out.println(custDTO.toString());
			row = new MemberDAO().custJoin(custDTO);
		}

		String moveURL;
		if (row > 0) {
			System.out.println("회원가입 성공");
			moveURL = "login.jsp";
		} else {
			System.out.println("회원가입 실패");
			moveURL = "main.jsp";
		}

		request.getRequestDispatcher(moveURL).forward(request, response);

	}

}