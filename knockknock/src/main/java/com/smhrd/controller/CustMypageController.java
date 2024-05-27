package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CustomerDTO;
import com.smhrd.model.RequestDAO;
import com.smhrd.model.RequestDTO;
public class CustMypageController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[CustMypageController]");
		HttpSession session = request.getSession();
		CustomerDTO userInfo = (CustomerDTO) session.getAttribute("userInfo");
		ArrayList<RequestDTO> reqList = new RequestDAO().showCustRequest(userInfo);
		for (RequestDTO requestDTO : reqList) {
			System.out.println(requestDTO.getReq_no());
		}
		System.out.println(reqList.size());
		System.out.println(userInfo.getCust_no());
		session.setAttribute("reqList", reqList);
		response.sendRedirect("custMypage.jsp");
		
	}
}
