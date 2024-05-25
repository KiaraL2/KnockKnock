package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public static ArrayList<CustomerDTO> showCustomer() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<CustomerDTO> cust_list = (ArrayList) session.selectList("showCustomer");
		session.close();

		return cust_list;
	}

	public int custJoin(CustomerDTO custDTO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("custJoin", custDTO);

		session.close();

		return row;
	}

	public int sellerJoin(SellerDTO sellerDTO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("sellerJoin", sellerDTO);

		session.close();

		return row;
	}

	public CustomerDTO custLogin(CustomerDTO custDTO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		CustomerDTO userInfo = session.selectOne("custLogin", custDTO);

		session.close();

		return userInfo;
	}

	public SellerDTO sellerLogin(SellerDTO sellerDTO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		SellerDTO userInfo = session.selectOne("sellerLogin", sellerDTO);

		session.close();

		return userInfo;
	}
}