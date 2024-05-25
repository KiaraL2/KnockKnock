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
}
