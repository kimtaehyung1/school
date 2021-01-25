package com.school.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.school.web.vo.RSIVO;
import com.school.web.vo.RSRVO;
import com.school.web.vo.SchoolVO;

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
	
	public List<RSIVO> researchList(RSIVO vo) {
		return sqlSession.selectList("cafeteria.researchList", vo);
	}
	
	public int create(RSIVO rsivo) {
		  return sqlSession.insert("cafeteria.researchRSI", rsivo);
	}

	public RSIVO researchDetail(String suriSeq) {
		RSIVO rsivo = sqlSession.selectOne("cafeteria.researchDetail", suriSeq);
		return rsivo;	
	}
	
	public int update(RSIVO rsivo) {
		return sqlSession.update("cafeteria.researchUpdate", rsivo);
	}

	public int delete(RSIVO rsivo) {
		return sqlSession.delete("cafeteria.researchDelete", rsivo);
	}
	
	public int count(SchoolVO vo) {
		return sqlSession.selectOne("cafeteria.count", vo);
	}
	
	public int insert(RSRVO rsrvo) {
		return sqlSession.insert("cafeteria.insert", rsrvo);
	}
}
