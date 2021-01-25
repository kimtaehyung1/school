package com.school.web.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.web.dao.SchoolDAO;
import com.school.web.vo.RSIVO;
import com.school.web.vo.RSRVO;
import com.school.web.vo.SchoolVO;

@Service
public class SchoolService {

	@Autowired
	private SchoolDAO schoolDao;
	
	public boolean loginCheck(SchoolVO vo, HttpSession session) {
		
		boolean result = schoolDao.loginCheck(vo);
		
		if(result) {
			SchoolVO vo2 = memberInfo(vo);
			session.setAttribute("userId", vo2.getUserId());
			session.setAttribute("memberName", vo2.getMemberName());
			session.setAttribute("adminYn", vo2.getAdminYn());
		}
		
		return result;
	}
	
	public SchoolVO memberInfo(SchoolVO vo) {
		return schoolDao.memberInfo(vo);
	}
	
	public void logout(HttpSession session) {		
		session.invalidate();
	}
	
	public List<RSIVO> researchList(RSIVO vo) {
		return schoolDao.researchList(vo);
	}
	
	public int create(RSIVO rsivo) {
		return schoolDao.create(rsivo);
	}
	
	public RSIVO researchDetail(String suriSeq) {
		RSIVO rsivo = schoolDao.researchDetail(suriSeq);
		return rsivo;
	}

	public int update(RSIVO rsivo) {
		return schoolDao.update(rsivo);
	}
	
	public int delete(RSIVO rsivo) {
		return schoolDao.delete(rsivo);
	}
	
	public int count(SchoolVO vo) {
		return schoolDao.count(vo);
	}
	
	public int insert(RSRVO rsrvo) {
		
		return schoolDao.insert(rsrvo);
	}
}
