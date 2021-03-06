package com.school.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
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
import com.school.web.vo.PageVO;
import com.school.web.vo.RSIVO;
import com.school.web.vo.RSRVO;
import com.school.web.vo.SchoolVO;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class SchoolController extends HttpServlet {
	private static final long serialVersionUID = 1778052189418196350L;

	@Autowired
	private SchoolService schoolService;

	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public void homeGet(SchoolVO vo, HttpSession session) {}

	@RequestMapping(value = "home.do", method = RequestMethod.POST)
	public ModelAndView logIn(@ModelAttribute SchoolVO vo, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		boolean result = schoolService.loginCheck(vo, session);
		if (result == true) {
			mav.setViewName("home");
			mav.addObject("msg", "success");
		} else {
			mav.setViewName("home");
			mav.addObject("msg", "failure");
		}
		
		return mav;
	}

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public ModelAndView logOut(HttpSession session) {

		schoolService.logout(session);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}

	@RequestMapping(value = "researchList.do", method = RequestMethod.GET)
	public List<RSIVO> researchList(Model model, RSIVO rsivo, HttpSession session
			,@RequestParam(defaultValue = "all")String search_option
			,@RequestParam(defaultValue = "1")int curPage
			,@RequestParam(defaultValue = "")String keyword
			) {
		
		int count = schoolService.countArticle(search_option, keyword);
		PageVO page = new PageVO(count, curPage);
		int start = page.getPageBegin();
		int end = page.getPageEnd();
		List<RSIVO> list = schoolService.researchList(start, end, search_option, keyword);
		
		model.addAttribute("list", list);
		model.addAttribute("keyword", keyword);
		model.addAttribute("search_option", search_option);
		model.addAttribute("page", page);
		model.addAttribute("count", count);
		return list;
	}

	@RequestMapping(value = "researchList.do", method = RequestMethod.POST)
	public ModelAndView researchList(@ModelAttribute SchoolVO vo, Model model, RSIVO rsivo, HttpSession session
			,@RequestParam(defaultValue = "all")String search_option
			,@RequestParam(defaultValue = "1")int curPage
			,@RequestParam(defaultValue = "")String keyword
			) {
		
		int count = schoolService.countArticle(search_option, keyword);
		PageVO page = new PageVO(count, curPage);
		int start = page.getPageBegin();
		int end = page.getPageEnd();
		
		ModelAndView mav = new ModelAndView();
		boolean result = schoolService.loginCheck(vo, session);

		if (result == true) {
			mav.setViewName("researchList");
		}

		List<RSIVO> list = schoolService.researchList(start, end, search_option, keyword);
		model.addAttribute("list", list);
		return mav;
	}

	@RequestMapping(value = "researchCreate.do", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@RequestMapping(value = "researchCreate.do", method = RequestMethod.POST)
	@ResponseBody
	synchronized public String create(
		RSIVO rsivo,
		@RequestParam(value = "surTitle") String surTitle,
		@RequestParam(value = "queCnt") String queCnt,
		@RequestParam(value = "surSatDate") String surSatDate,
		@RequestParam(value = "surEndDate") String surEndDate,
		@RequestParam(value = "writer") String writer,
		@RequestParam(value = "regName") String regName, 
		@RequestParam(value = "udtName") String udtName,
		@RequestParam(value = "suriList[]") String[] suriList
		) {
	
		ArrayList<String> suriTitle1 = new ArrayList<String>();
		ArrayList<String> suriTitle2 = new ArrayList<String>();
		ArrayList<String> suriTitle3 = new ArrayList<String>();
		ArrayList<String> suriTitle4 = new ArrayList<String>();
		ArrayList<String> suriTitle5 = new ArrayList<String>();
		ArrayList<String> suriTitle6 = new ArrayList<String>();
		ArrayList<String> suriTitle7 = new ArrayList<String>();

			for(int i=0; i<suriList.length; i++) {
				if(i % 7 == 0) {
					suriTitle1.add(suriList[i]);
				}
				if(i % 7 == 0 + 1) {
					suriTitle2.add(suriList[i]);
				}
				if(i % 7 == 0 + 2) {
					suriTitle3.add(suriList[i]);
				}
				if(i % 7 == 0 + 3) {
					suriTitle4.add(suriList[i]);
				}
				if(i % 7 == 0 + 4) {
					suriTitle5.add(suriList[i]);
				}
				if(i % 7 == 0 + 5) {
					suriTitle6.add(suriList[i]);
				}
				if(i % 7 == 0 + 6) {
					suriTitle7.add(suriList[i]);
				}
			}
				
			rsivo.setSuriTitle1(suriTitle1.toString());
			rsivo.setSuriTitle2(suriTitle2.toString());
			rsivo.setSuriTitle3(suriTitle3.toString());
			rsivo.setSuriTitle4(suriTitle4.toString());
			rsivo.setSuriTitle5(suriTitle5.toString());
			rsivo.setSuriTitle6(suriTitle6.toString());
			rsivo.setSuriTitle7(suriTitle6.toString());
			schoolService.create(rsivo);
            return "redirect:researchList";
	}

	@RequestMapping(value="researchDetail.do", method = RequestMethod.GET)
	public ModelAndView detail(String suriSeq, Model model, SchoolVO vo, HttpSession session ) {
		RSIVO rsivo= schoolService.researchDetail(suriSeq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", rsivo);
		
		ArrayList<String> list01 = new ArrayList<String>();
		ArrayList<String> list02 = new ArrayList<String>();
		ArrayList<String> list03 = new ArrayList<String>();
		ArrayList<String> list04 = new ArrayList<String>();
		ArrayList<String> list05 = new ArrayList<String>();
		ArrayList<String> list06 = new ArrayList<String>();
		ArrayList<String> list07 = new ArrayList<String>();
		
		String[] col01 = rsivo.getSuriTitle1().substring(1, rsivo.getSuriTitle1().length()-1).split(",");
		String[] col02 = rsivo.getSuriTitle2().substring(1, rsivo.getSuriTitle2().length()-1).split(",");
		String[] col03 = rsivo.getSuriTitle3().substring(1, rsivo.getSuriTitle3().length()-1).split(",");
		String[] col04 = rsivo.getSuriTitle4().substring(1, rsivo.getSuriTitle4().length()-1).split(",");
		String[] col05 = rsivo.getSuriTitle5().substring(1, rsivo.getSuriTitle5().length()-1).split(",");
		String[] col06 = rsivo.getSuriTitle6().substring(1, rsivo.getSuriTitle6().length()-1).split(",");
		String[] col07 = rsivo.getSuriTitle6().substring(1, rsivo.getSuriTitle6().length()-1).split(",");
		
		for(int i=0; i< col01.length; i++) {
			list01.add(col01[i]);
			list02.add(col02[i]);
			list03.add(col03[i]);
			list04.add(col04[i]);
			list05.add(col05[i]);
			list06.add(col06[i]);
			list07.add(col07[i]);
		}
		
		model.addAttribute("list01", list01);
		model.addAttribute("list02", list02);
		model.addAttribute("list03", list03);
		model.addAttribute("list04", list04);
		model.addAttribute("list05", list05);
		model.addAttribute("list06", list06);
		return mav ;
	}
	
	@RequestMapping(value="researchDetail.do", method = RequestMethod.POST)
	public String detail(Model model, SchoolVO vo, HttpSession session, String suriSeq) {
		schoolService.loginCheck(vo, session);
		RSIVO rsivo = schoolService.researchDetail(suriSeq);
		model.addAttribute("vo", rsivo);
		
		ArrayList<String> list01 = new ArrayList<String>();
		ArrayList<String> list02 = new ArrayList<String>();
		ArrayList<String> list03 = new ArrayList<String>();
		ArrayList<String> list04 = new ArrayList<String>();
		ArrayList<String> list05 = new ArrayList<String>();
		ArrayList<String> list06 = new ArrayList<String>();
		ArrayList<String> list07 = new ArrayList<String>();
		
		String[] col01 = rsivo.getSuriTitle1().substring(1, rsivo.getSuriTitle1().length()-1).split(",");
		String[] col02 = rsivo.getSuriTitle2().substring(1, rsivo.getSuriTitle2().length()-1).split(",");
		String[] col03 = rsivo.getSuriTitle3().substring(1, rsivo.getSuriTitle3().length()-1).split(",");
		String[] col04 = rsivo.getSuriTitle4().substring(1, rsivo.getSuriTitle4().length()-1).split(",");
		String[] col05 = rsivo.getSuriTitle5().substring(1, rsivo.getSuriTitle5().length()-1).split(",");
		String[] col06 = rsivo.getSuriTitle6().substring(1, rsivo.getSuriTitle6().length()-1).split(",");
		String[] col07 = rsivo.getRsrvo().getDescription().substring(1, rsivo.getRsrvo().getDescription().length()-1).split(",");
		
		for(int i=0; i< col01.length; i++) {
			list01.add(col01[i]);
			list02.add(col02[i]);
			list03.add(col03[i]);
			list04.add(col04[i]);
			list05.add(col05[i]);
			list06.add(col06[i]);
			list07.add(col07[i]);
		}
		
		model.addAttribute("list01", list01);
		model.addAttribute("list02", list02);
		model.addAttribute("list03", list03);
		model.addAttribute("list04", list04);
		model.addAttribute("list05", list05);
		model.addAttribute("list06", list06);
		model.addAttribute("list07", list07);
		return "researchDetail";
	}

	@RequestMapping(value="researchUpdate.do", method = RequestMethod.GET)
 	public String update(String suriSeq, Model model) {
		
		RSIVO rsivo = schoolService.researchDetail(suriSeq);
		model.addAttribute("vo", rsivo);
		
		ArrayList<String> list01 = new ArrayList<String>();
		ArrayList<String> list02 = new ArrayList<String>();
		ArrayList<String> list03 = new ArrayList<String>();
		ArrayList<String> list04 = new ArrayList<String>();
		ArrayList<String> list05 = new ArrayList<String>();
		ArrayList<String> list06 = new ArrayList<String>();
		ArrayList<String> list07 = new ArrayList<String>();
		
		String[] col01 = rsivo.getSuriTitle1().substring(1, rsivo.getSuriTitle1().length()-1).split(",");
		String[] col02 = rsivo.getSuriTitle2().substring(1, rsivo.getSuriTitle2().length()-1).split(",");
		String[] col03 = rsivo.getSuriTitle3().substring(1, rsivo.getSuriTitle3().length()-1).split(",");
		String[] col04 = rsivo.getSuriTitle4().substring(1, rsivo.getSuriTitle4().length()-1).split(",");
		String[] col05 = rsivo.getSuriTitle5().substring(1, rsivo.getSuriTitle5().length()-1).split(",");
		String[] col06 = rsivo.getSuriTitle6().substring(1, rsivo.getSuriTitle6().length()-1).split(",");
		String[] col07 = rsivo.getSuriTitle6().substring(1, rsivo.getSuriTitle6().length()-1).split(",");
		
		for(int i=0; i< col01.length; i++) {
			list01.add(col01[i]);
			list02.add(col02[i]);
			list03.add(col03[i]);
			list04.add(col04[i]);
			list05.add(col05[i]);
			list06.add(col06[i]);
			list07.add(col07[i]);
		}
		
		model.addAttribute("list01", list01);
		model.addAttribute("list02", list02);
		model.addAttribute("list03", list03);
		model.addAttribute("list04", list04);
		model.addAttribute("list05", list05);
		model.addAttribute("list06", list06);
		return "researchUpdate";
	}
	
	@RequestMapping(value="researchUpdate.do", method = RequestMethod.POST)
	public String update(RSIVO rsivo, RSRVO rsrvo,
			@RequestParam(value = "suriSeq") String suriSeq,
			@RequestParam(value = "surTitle") String surTitle,
			@RequestParam(value = "queCnt") String queCnt,
			@RequestParam(value = "surSatDate") String surSatDate,
			@RequestParam(value = "surEndDate") String surEndDate,
			@RequestParam(value = "writer") String writer,
			@RequestParam(value = "regName") String regName, 
			@RequestParam(value = "regDate") Date regDate , 
			@RequestParam(value = "udtName") String udtName,
			@RequestParam(value = "suriList[]") String[] suriList)  {
		
		ArrayList<String> suriTitle1 = new ArrayList<String>();
		ArrayList<String> suriTitle2 = new ArrayList<String>();
		ArrayList<String> suriTitle3 = new ArrayList<String>();
		ArrayList<String> suriTitle4 = new ArrayList<String>();
		ArrayList<String> suriTitle5 = new ArrayList<String>();
		ArrayList<String> suriTitle6 = new ArrayList<String>();
		ArrayList<String> suriTitle7 = new ArrayList<String>();
			
		for(int i=0; i<suriList.length; i++) {
			if(i % 7 == 0) {
				suriTitle1.add(suriList[i]);
			}
			if(i % 7 == 0 + 1) {
				suriTitle2.add(suriList[i]);
			}
			if(i % 7 == 0 + 2) {
				suriTitle3.add(suriList[i]);
			}
			if(i % 7 == 0 + 3) {
				suriTitle4.add(suriList[i]);
			}
			if(i % 7 == 0 + 4) {
				suriTitle5.add(suriList[i]);
			}
			if(i % 7 == 0 + 5) {
				suriTitle6.add(suriList[i]);
			}
			if(i % 7 == 0 + 6) {
				suriTitle7.add(suriList[i]);
			}
		}
		rsivo.setSuriTitle1(suriTitle1.toString());
		rsivo.setSuriTitle2(suriTitle2.toString());
		rsivo.setSuriTitle3(suriTitle3.toString());
		rsivo.setSuriTitle4(suriTitle4.toString());
		rsivo.setSuriTitle5(suriTitle5.toString());
		rsivo.setSuriTitle6(suriTitle6.toString());
	
		schoolService.update(rsivo);
		return "researchUpdate";
	}

	@RequestMapping(value="passChk.do", method = RequestMethod.GET)
	public ModelAndView passChk(String suriSeq, RSIVO rsivo, Model model) {
		ModelAndView mav = new ModelAndView();
		
		RSIVO vo = schoolService.researchDetail(suriSeq);
		model.addAttribute("vo", vo);
		return mav;
	}
	
	@RequestMapping(value="passChk.do", method = RequestMethod.POST)
	public @ResponseBody Map<Object, Object> passChk(String SuriSeq, RSIVO rsivo, SchoolVO vo){
		
		boolean bl;
		int count = schoolService.count(vo);
		
		Map<Object,Object> map = new HashMap<Object,Object>();
		if(count == 1) {
			bl = true;
			map.put("bl", bl);
			schoolService.delete(rsivo);
		}else {
			bl = false;
			map.put("bl", bl);
		}
		return map;
	}

	@RequestMapping(value="researchConfirm.do", method = RequestMethod.GET)
	public String confirm() {
		return "researchConfirm";
	}
	@RequestMapping(value="researchConfirm.do", method = RequestMethod.POST)
	public String confirm(RSIVO rsivo, RSRVO rsrvo,
				
			@RequestParam(value = "suriSeq") String suriSeq,
			@RequestParam(value = "surTitle") String surTitle,
			@RequestParam(value = "surSatDate") String surSatDate,
			@RequestParam(value = "surEndDate") String surEndDate,
			@RequestParam(value = "queCnt") String queCnt,
			@RequestParam(value = "suriNum") String suriNum, 
			@RequestParam(value = "suriTitle1") String suriTitle1,
			@RequestParam(value = "suriTitle2") String suriTitle2,
			@RequestParam(value = "suriTitle3") String suriTitle3,
			@RequestParam(value = "suriTitle4") String suriTitle4,
			@RequestParam(value = "suriTitle5") String suriTitle5,
			@RequestParam(value = "suriTitle6") String suriTitle6,
			@RequestParam(value = "description") String description,
			@RequestParam(value = "writer") String writer,
			@RequestParam(value = "regName") String regName, 
			@RequestParam(value = "udtName") String udtName
			) {
				
		rsrvo.setSurqTitle(suriTitle1.substring(1));
		schoolService.insert(rsrvo);
		return "researchConfirm";
	}

	@RequestMapping(value="researchPopup.do", method = RequestMethod.GET)
	public JSONObject resultPopup(String suriSeq, Model model) {
		
		List<Object> list = schoolService.result(suriSeq);
		
		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		JSONObject univ = new JSONObject();
		
		String suriNum = "";
		String surTitle = "";
		String surqTitle = "";
		String queCnt = ""; 
		String regName = null;
	
		for(int i=0; i<list.size(); i++) {
			@SuppressWarnings("unchecked")
			Map<String, Object> item = (Map<String, Object>) list.get(i);
			suriNum = (String) item.get("SURINUM");
			surTitle = (String) item.get("SURTITLE");
			surqTitle = (String) item.get("SURQTITLE");
			queCnt = (String) item.get("QUECNT");
			regName = (String) item.get("REGNAME");
			
//			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
//			String to = fm.format(regName);
			
//			List<String> sList = new ArrayList<String>();
//			String ttr = map.get(i).get("SURINUM").toString().trim().replace(",", "");
//			String[] str = suriNum.split(",");
//			Collections.addAll(sList, str);
//			String[] sv = sList.toArray(new String[sList.size()]);
//			List<Integer> number = new ArrayList<Integer>();
		
		    object.put("num00", suriNum.charAt(0));
		    object.put("num01", suriNum.charAt(2));
		    object.put("num02", suriNum.charAt(4));
		    object.put("num03", suriNum.charAt(6));
		    object.put("num04", suriNum.charAt(8));
		    
//		    double aa = Double.parseDouble(suriNum.replace(",",""));
//		    int num = (int) Math.round(aa);				
				
				object.put("name", regName);
				object.put("surqTitle", surqTitle);
				array.add(object);
				univ.put("list", array);
		    }
		
		    model.addAttribute("surTitle",  surTitle);
		    model.addAttribute("queCnt",  queCnt);
		    
		return univ;
	}
	
	@RequestMapping(value="description.do", method = RequestMethod.GET)
	public String description(String suriSeq, Model model) {
		
		List<Object> list = schoolService.result(suriSeq);
		
		String surTitle = "";
//		String description = "";
		
//		List<String> des = new ArrayList<String>();
//		Map<String, Object> map = new HashMap<String, Object>();
		for(int i=0; i<list.size(); i++) {
			@SuppressWarnings("unchecked")
			Map<String, Object> item = (Map<String, Object>) list.get(i);
			surTitle = (String) item.get("SURTITLE");
//			description = (String) item.get("DESCRIPTION");
			
//			String[] str = description.split(",");
			
		}
		model.addAttribute("list", list);
		model.addAttribute("surTitle", surTitle);
		
		return "description";
	}
}
