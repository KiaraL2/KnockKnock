package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ReviewDAO {
	
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

    public int reviewWrite(ReviewDTO dto) {
        SqlSession session = sqlSessionFactory.openSession(true);
        int row = 0;
        try {
            row = session.insert("com.smhrd.mapper.ReviewMapper.insertReview", dto);
        } finally {
            session.close();
        }
        return row;

}
}
