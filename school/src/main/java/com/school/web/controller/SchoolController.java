package com.school.web.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.school.web.service.SchoolService;
import com.school.web.vo.SchoolVO;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.school.web.vo.RSIVO;
import com.school.web.vo.RSVO;

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
	public List<RSVO> list(Model model, RSVO rsvo, HttpSession session) {
		List<RSVO> list = schoolService.researchList(rsvo);
		model.addAttribute("list", list);

		return list;
	}

	@RequestMapping(value = "researchList.do", method = RequestMethod.POST)
	public ModelAndView list(@ModelAttribute SchoolVO vo, Model model, RSVO rsvo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		boolean result = schoolService.loginCheck(vo, session);

		if (result == true) {
			mav.setViewName("researchList");
			mav.addObject("msg", "success");
		}

		List<RSVO> list = schoolService.researchList(rsvo);
		model.addAttribute("list", list);

		return mav;
	}

	@RequestMapping(value = "researchCreate.do", method = RequestMethod.GET)
	public ModelAndView create(RSVO rsvo, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		return mav;
	}

	@RequestMapping(value = "researchCreate.do", method = RequestMethod.POST)
	@ResponseBody
	public Object create(
			RSIVO rsivo, HttpServletRequest request,
			@RequestParam(value = "surTitle") String surTitle,
			@RequestParam(value = "queCnt") String queCnt,
			@RequestParam(value = "surSatDate") String surSatDate,
			@RequestParam(value = "surEndDate") String surEndDate,
			@RequestParam(value = "attachPath") String attachPath,
			@RequestParam(value = "writer") String writer,
			@RequestParam(value = "regName") String regName, 
			@RequestParam(value = "udtName") String udtName,
			@RequestParam(value = "suriList[]") List<String> suriList
	
			
			) {
		
		System.out.println(suriList.toString().length());
		System.out.println(suriList.toString());

//		for(int i=0; 1< suriList.toString().length(); i++) {
//			rsivo.setSuriTitle1(test + i);
//			}


//         schoolService.create(rsivo);

//		Map<String, Object> retVal = new HashMap<String, Object>();
//
//		// 성공했다고 처리
//		retVal.put("code", "OK");
//		retVal.put("message", "등록에 성공 하였습니다.");

        return "redirect:researchList.do";

	}

}
