package com.school.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.school.web.service.SchoolService;
import com.school.web.vo.SchoolVO;
import com.school.web.vo.Tb_06_RS_VO;

@Controller
public class SchoolController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1778052189418196350L;

	@Autowired
	private SchoolService schoolService;

	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public void homeGet(SchoolVO vo, HttpSession session) {
	}

	@RequestMapping(value = "home.do", method = RequestMethod.POST)
	public ModelAndView logIn(@ModelAttribute SchoolVO vo, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		boolean result = schoolService.loginCheck(vo, session);

		if (result == true) {
			mav.setViewName("home");
			mav.addObject("msg", "success");
		} 
		return mav;
	}

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public ModelAndView logOut(HttpSession session) {

		schoolService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("msg", "logout");
		return mav;
	}

	@RequestMapping(value = "researchList.do", method = RequestMethod.GET)
	public List<Tb_06_RS_VO> researchList(Model model, Tb_06_RS_VO rsvo, HttpSession session) {
		List<Tb_06_RS_VO> list = schoolService.researchList(rsvo);
		System.out.println(list);
		model.addAttribute("list", list);

		return list;
	}
	
	@RequestMapping(value = "researchList.do", method = RequestMethod.POST)
	public ModelAndView researchList(@ModelAttribute SchoolVO vo, Model model, Tb_06_RS_VO rsvo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		boolean result = schoolService.loginCheck(vo, session);

		if (result == true) {
			mav.setViewName("researchList");
			mav.addObject("msg", "success");
		}
		
		List<Tb_06_RS_VO> list = schoolService.researchList(rsvo);
		System.out.println(list);
		model.addAttribute("list", list);
		
		return mav;
	}

}
