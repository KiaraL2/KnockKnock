package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class RequestDAO {
	
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 의뢰서 등록 메소드
	public int insert(RequestDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insert", dto);
		session.close();

		return row;
	}

	// 의뢰서 조회 메소드
	public static ArrayList<RequestDTO> select() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<RequestDTO> request_list = (ArrayList) session.selectList("selectRequest");
		session.close();

		return request_list;
	}

	// 의뢰서 세부페이지 메소드
	public static RequestDTO request(String num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		RequestDTO request_detail = session.selectOne("request",num);
		session.close();

		return request_detail;
	}

	public ArrayList<RequestDTO> showCustRequest(CustomerDTO userInfo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<RequestDTO> request_list = (ArrayList) session.selectList("showCustRequest");
		session.close();
		return request_list;
	}

}

