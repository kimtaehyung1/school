package com.school.web.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.web.dao.SchoolDAO;
import com.school.web.vo.SchoolVO;
import com.school.web.vo.Tb_06_RS_VO;

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
	
	public List<Tb_06_RS_VO> researchList(Tb_06_RS_VO vo) {
		
		return schoolDao.researchList(vo);
	}
}
