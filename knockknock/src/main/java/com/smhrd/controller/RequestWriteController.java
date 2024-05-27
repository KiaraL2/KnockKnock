package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CustomerDTO;
import com.smhrd.model.RequestDAO;
import com.smhrd.model.RequestDTO;

public class RequestWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[RequestWriteController]");
		
		request.setCharacterEncoding("UTF-8");
		CustomerDTO userInfo = (CustomerDTO) request.getSession().getAttribute("userInfo");
		int cust_no = userInfo.getCust_no();
		String req_title = request.getParameter("req_title");
		String req_file = request.getParameter("req_file");
		String req_cate = request.getParameter("req_use");
		String req_content = request.getParameter("req_content");
		String req_price = request.getParameter("req_price");
		System.out.println("cust_no = "+ userInfo.getCust_no());
		System.out.println("req_title" + req_title);
		System.out.println("req_file" + req_file);
		System.out.println("req_cate" + req_cate);
		System.out.println("req_content" + req_content);
		System.out.println("req_price" + req_price);
		
		RequestDTO requestDTO = new RequestDTO(cust_no, req_title, req_file, req_cate, req_content, req_price);
		System.out.println("requestDTO" + requestDTO);
		
		int row = 0;
		row = new RequestDAO().requestWrite(requestDTO);

		if(row>0) {
			System.out.println("정보 기입 성공");
		}
		else {
			System.out.println("정보 기입 실패");
		}
				
	}

}
