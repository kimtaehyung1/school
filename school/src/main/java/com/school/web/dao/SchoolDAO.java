package com.school.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.school.web.vo.SchoolVO;
import com.school.web.vo.RSIVO;
import com.school.web.vo.RSQVO;
import com.school.web.vo.RSVO;

@Repository
public class SchoolDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public boolean loginCheck(SchoolVO vo) {
		String result = sqlSession.selectOne("cafeteria.loginCheck", vo);
		return (result == null)? false : true;
	}
	
	public SchoolVO memberInfo(SchoolVO vo) {
		return sqlSession.selectOne("cafeteria.memberInfo", vo);
	}
	
	public void logout(HttpSession session) {
		
	}
	
	public List<RSVO> researchList(RSVO vo) {
		return sqlSession.selectList("cafeteria.researchList", vo);
	}
	
	public void create(RSIVO rsivo) {
		  sqlSession.insert("cafeteria.researchRSI", rsivo);
	}


}
