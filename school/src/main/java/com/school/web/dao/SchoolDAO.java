package com.school.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.school.web.vo.SchoolVO;
import com.school.web.vo.Tb_06_RS_VO;

@Repository
public class SchoolDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public boolean loginCheck(SchoolVO vo) {
		String result = sqlSession.selectOne("cafeteria.loginCheck", vo);
		System.out.println(result);
		return (result == null)? false : true;
	}
	
	public SchoolVO memberInfo(SchoolVO vo) {
		return sqlSession.selectOne("cafeteria.memberInfo", vo);
	}
	
	public void logout(HttpSession session) {
		
	}
	
	public List<Tb_06_RS_VO> researchList(Tb_06_RS_VO vo) {
		return sqlSession.selectList("cafeteria.researchList", vo);
	}
}
