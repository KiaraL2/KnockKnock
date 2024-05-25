package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ReviewDAO;
import com.smhrd.model.ReviewDTO;

public class ReviewWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 요청에서 파라미터 받기
        String review_no = request.getParameter("review_no");
        String proposal_no = request.getParameter("proposal_no");
        String cust_no = request.getParameter("cust_no");
        String review_content = request.getParameter("review_content");
        String review_ratings = request.getParameter("review_ratings");
        String created_at = request.getParameter("created_at");
        String pch_no = request.getParameter("pch_no");
        String review_name = request.getParameter("review_name"); // 새로운 파라미터 받기
        
        System.out.println("review_no : " + review_no);
        System.out.println("proposal_no : " + proposal_no);
        System.out.println("cust_no : " + cust_no);
        System.out.println("review_content : " + review_content);
        System.out.println("review_ratings : " + review_ratings);
        System.out.println("created_at : " + created_at);
        System.out.println("pch_no : " + pch_no);
        System.out.println("review_name : " + review_name); // 새로운 파라미터 출력
        
        // 2. DTO 생성 및 데이터 설정
        ReviewDTO dto = new ReviewDTO(review_no, proposal_no, cust_no, review_content, review_ratings, created_at, pch_no, review_name);
        
        // 3. DAO를 사용하여 데이터베이스 작업 수행
        ReviewDAO dao = new ReviewDAO();
        int row = dao.reviewWrite(dto);
        
        // 4. 실행 결과에 따른 view 선택
        String moveURL;
        if (row > 0) {
            System.out.println("리뷰 작성 성공");
            moveURL = "./ReviewSuccess.jsp";
        } else {
            System.out.println("리뷰 작성 실패");
            moveURL = "redirect:/Main.jsp";
        }
        
        // 5. 포워드 또는 리다이렉트
        if (moveURL.startsWith("redirect:")) {
            response.sendRedirect(moveURL.substring(9));
        } else {
            request.getRequestDispatcher(moveURL).forward(request, response);
        }
	
	
	
	}

}
