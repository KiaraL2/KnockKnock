package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.ibatis.reflection.SystemMetaObject;
import com.smhrd.model.ProposalDAO;
import com.smhrd.model.ProposalDTO;

public class ProposalController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[ProposalController]");
		
		String saveDirectory = request.getServletContext().getRealPath("./upload");
		
		// maxPostSize
		int maxSize = 10*1024*1024;
		
		request.setCharacterEncoding("UTF-8");

//		System.out.println("파일 저장 경로 :" + saveDirectory);
		
		 String proposal_name = request.getParameter("proposal_name");
         String proposal_products = request.getParameter("proposal_products");
         String proposal_description = request.getParameter("proposal_description");

	        // proposal_price를 문자열로 받아서 int로 변환
	        int proposal_price = 0;
	        try {
	            proposal_price = Integer.parseInt(request.getParameter("proposal_price"));
	        } catch (NumberFormatException e) {
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Proposal price must be a number");
	            return;
	        }
		
		System.out.println("proposal_nam : "+ proposal_name);
		System.out.println("proposal_products : "+ proposal_products);
		System.out.println("proposal_description : "+ proposal_description);
		System.out.println("proposal_price : "+ proposal_price);
		
		int req_no = 1;
		int seller_no = 1 ; //임시로 값설정
		
		

		ProposalDTO dto = new ProposalDTO(seller_no, proposal_name,proposal_price, proposal_products, proposal_description,req_no);
				
		int row = new ProposalDAO().insert(dto);
		
		if(row>0) {
			System.out.println("업로드 성공");
		} else {
			System.out.println("업로드 실패");
		}
		
		response.sendRedirect("proposalComplete.jsp");
		
	}	
}
