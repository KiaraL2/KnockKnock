package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ProposalDAO {
	
static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 제안서 등록 메소드
	public int insert(ProposalDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insert", dto);
		session.close();

		return row;
	}

	// 제안서 조회 메소드
	public static ArrayList<ProposalDTO> select() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ProposalDTO> proposal_list = (ArrayList) session.selectList("selectProposal");
		session.close();

		return proposal_list;
	}

	// 제안서 세부페이지 메소드
	public static ProposalDTO request(String detail) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ProposalDTO proposal_detail = session.selectOne("request",detail);
		session.close();

		return proposal_detail;
	}

}
