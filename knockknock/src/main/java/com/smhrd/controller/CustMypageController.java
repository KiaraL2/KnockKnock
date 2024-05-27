package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CustomerDTO;
import com.smhrd.model.RequestDAO;
import com.smhrd.model.RequestDTO;
public class CustMypageController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[CustMypageController]");
		CustomerDTO userInfo = (CustomerDTO) request.getSession().getAttribute("userInfo");
		ArrayList<RequestDTO> reqDTO = new RequestDAO().showCustRequest(userInfo);
		System.out.println(reqDTO.size());
		request.setAttribute("reqList", reqDTO);
		response.sendRedirect("custMypage.jsp");
		
	}
}
