package com.project.camping;

import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.dao.CampingDAO;
import com.project.vo.CampingList;
import com.project.vo.CampingVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}

	@RequestMapping("/insert")
	public String insert(HttpServletRequest request, Model model) {
		
		CampingDAO dao = sqlSession.getMapper(CampingDAO.class);
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("classpath:application_ctx.xml");
		CampingVO campingVO = ctx.getBean("vo", CampingVO.class);
		campingVO.setName(request.getParameter("name"));
		campingVO.setContent(request.getParameter("content"));
		campingVO.setPw(request.getParameter("pw"));
		campingVO.setCampNumber(Integer.parseInt(request.getParameter("campNumber")));
		model.addAttribute("campNumber", campingVO.getCampNumber());
		dao.insert(campingVO);
		System.out.println(campingVO.getCampNumber());
		ctx.close();
		return "redirect:list";
	}
	
	
	@RequestMapping("/list")
	public String count(HttpServletRequest request, Model model) {
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("classpath:application_ctx.xml");
		CampingDAO dao = sqlSession.getMapper(CampingDAO.class);
		int pageSize = 10;
		int currentPage = 1;
		// 캠프넘버 안넘어가짐
		int campNumber = 0; // 캠핑장 구분 index
		try {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			System.out.println("in");
			campNumber = Integer.parseInt(request.getParameter("campNumber"));
		} catch (Exception e) {
		}
		System.out.println("!!!!!!! =>" + campNumber);
		int totalCount =  dao.selectCount(campNumber);
		System.out.println(totalCount);
		CampingList campingList = ctx.getBean("list", CampingList.class);
	
		campingList.initMvcboardList(pageSize, totalCount, currentPage);
		
		HashMap<String, Integer> hmap = new HashMap<String, Integer>();
		hmap.put("startNo", campingList.getStartNo());
		hmap.put("endNo", campingList.getEndNo());
		hmap.put("campNumber", campNumber);
		
		campingList.setList(dao.selectList(hmap));
		System.out.println(campingList.getList());
		model.addAttribute(campingList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("campNumber", campNumber);
		ctx.close();
		return "list";
	}
	
	
	
	
	
	
	
	
	
}
