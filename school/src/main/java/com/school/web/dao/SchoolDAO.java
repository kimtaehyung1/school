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
	
	public void logout(HttpSession session) {}
	
	public int countArticle(String search_option, String keyword) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("search_option", search_option);
		return sqlSession.selectOne("cafeteria.countArticle", map);
	}
	
	public List<RSIVO> researchList(int start, int end, String search_option, String keyword) {
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList("cafeteria.researchList", map);
	}
	
	public int create(RSIVO rsivo) {
		return sqlSession.insert("cafeteria.researchRSI", rsivo);
	}

	public RSIVO researchDetail(String suriSeq) {
		return sqlSession.selectOne("cafeteria.researchDetail", suriSeq);
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
	
	public List<Object> result(String suriSeq) {
		return sqlSession.selectList("cafeteria.result", suriSeq);
	}
	public List<Object> description(String suriSeq) {
		return sqlSession.selectList("cafeteria.result", suriSeq);
	}
}
