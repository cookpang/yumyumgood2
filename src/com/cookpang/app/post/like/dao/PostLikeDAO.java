package com.cookpang.app.post.like.dao;

import org.apache.ibatis.session.SqlSession;

import com.cookpang.app.post.like.dto.PostLikeDTO;
import com.mybatis.config.MyBatisConfig;

public class PostLikeDAO {

	public SqlSession sqlSession;
	
	public PostLikeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public Integer checkLike(PostLikeDTO postLikeDTO) {
		return sqlSession.selectOne("postLike.checkLike", postLikeDTO);
	}
	public void insertLike(PostLikeDTO postLikeDTO) {
		sqlSession.insert("postLike.insertLike", postLikeDTO);
	}
	public void deleteLike(PostLikeDTO postLikeDTO) {
		sqlSession.delete("postLike.deleteLike", postLikeDTO);
	}
	public int getLikeCount(int postNumber) {
		return sqlSession.selectOne("postLike.getLikeCount", postNumber);
	}
	
	public void delete(int userNumber) {
		sqlSession.delete("postLike.delete",userNumber);
	}
	public void deleteByPostNumber(int postNumber) {
		sqlSession.delete("postLike.deleteByPostNumber",postNumber);
	}
	
	
	
}











