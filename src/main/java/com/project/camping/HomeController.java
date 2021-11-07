package com.project.camping;

import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping("/")
	public String home(HttpServletRequest request, Model model) {
		return "redirect:mainpage";
	}
	
	@RequestMapping("/mainpage")
	public String mainpage(HttpServletRequest request, Model model) {
		return "mainpage";
	}
	
	/**
	 * 관리자 로그인 페이지 연결
	 */
	@RequestMapping("/loginMain")
	public String loginMain(HttpServletRequest request, Model model) {
		return "loginMain";
	}
	/**
	 * 관리자 로그인 확인
	 */
	@RequestMapping("/loginOK")
	public String loginOK(HttpServletRequest request, Model model) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		CampingDAO dao = sqlSession.getMapper(CampingDAO.class);
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("id", id);
		hmap.put("pw", pw);
		int check = dao.loginCheck(hmap);
		
		if(check > 0) {
			System.out.println("true");
//			세션 테스트
			HttpSession session = request.getSession();
//			세션 변수 저장 => 세션이 저장됐다(= 관리자 로그인이 됐다) => h1 테그(list.jsp) 에서 true 라고 뜰거임
			session.setAttribute("manager", "true");
			
		}else {
			System.out.println("false");
		}
		
		
		return "redirect:list";
	}
	
	
	/**
	 * @param request
	 * @param model
	 * @return
	 * 댓글 추가하는 메소드
	 */
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
	
	
	/**
	 * @param request
	 * @param model
	 * @return
	 * 선택한 캠핑장의 댓글을 불러와주는 메소드
	 */
	@RequestMapping("/list")
	public String count(HttpServletRequest request, Model model) {
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("classpath:application_ctx.xml");
		CampingDAO dao = sqlSession.getMapper(CampingDAO.class);
		int pageSize = 10;
		int currentPage = 1;
		int campNumber = 0; // 캠핑장 구분 index
		try {
			campNumber = Integer.parseInt(request.getParameter("campNumber"));
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
//			System.out.println("in");
		} catch (Exception e) {
		}
//		System.out.println("!!!!!!! =>" + campNumber);
		int totalCount =  dao.selectCount(campNumber);
//		System.out.println(totalCount);
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
	
	
	
	/**
	 * @param request
	 * @param model
	 * @return
	 * 댓글에 좋아요를 클릭하면 좋아요 횟수를 올려주는 메소드
	 */
	@RequestMapping("/up")
	public String up(HttpServletRequest request, Model model) {
		System.out.println("컨트롤러의 increment() 메소드");
	
		CampingDAO mapper = sqlSession.getMapper(CampingDAO.class);
		
		int currentPage = 1;
		int campNumber = 0;
		try {
			campNumber = Integer.parseInt(request.getParameter("campNumber"));
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} catch (Exception e) {
		}
//		request 객체로 넘어온 조회수를 증가시킬 글번호를 받는다.		
		int idx = Integer.parseInt(request.getParameter("idx"));
//		조회수를 증가시키는 메소드를 실행한다.
		mapper.up(idx);

		model.addAttribute("idx", idx);
		model.addAttribute("campNumber", campNumber);
		model.addAttribute("currentPage", currentPage);
		return "redirect:list";
	}
	/**
	 * @param request
	 * @param model
	 * @return
	 * 댓글에 싫어요 클릭하면 좋아요 횟수를 올려주는 메소드
	 */
	@RequestMapping("/down")
	public String down(HttpServletRequest request, Model model) {
		System.out.println("컨트롤러의 increment() 메소드");
	
		CampingDAO mapper = sqlSession.getMapper(CampingDAO.class);
		
		int currentPage = 1;
		int campNumber = 0;
		try {
			campNumber = Integer.parseInt(request.getParameter("campNumber"));
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} catch (Exception e) {
		}
		
//		request 객체로 넘어온 조회수를 증가시킬 글번호를 받는다.		
		int idx = Integer.parseInt(request.getParameter("idx"));
//		조회수를 증가시키는 메소드를 실행한다.
		mapper.down(idx);
		
		model.addAttribute("idx", idx);
		model.addAttribute("campNumber", campNumber);
		model.addAttribute("currentPage", currentPage);
		return "redirect:list";
	}
	
	
	@RequestMapping("/mainlogin")
   public String mainlogin(HttpServletRequest request, Model model) {
      return "mainlogin";
   }
   
	
	
	
   @RequestMapping("/instructor")
   public String instructor(HttpServletRequest request, Model model) {
      return "instructor";
   }
   
   @RequestMapping("/register")
   public String register(HttpServletRequest request, Model model) {
	   return "register";
   }
   
   @RequestMapping("/lecture")
   public String lecture(HttpServletRequest request, Model model) {
	   return "register";
   }
   
   @RequestMapping("/path")
   public String path(HttpServletRequest request, Model model) {
	   return "path";
   }
	
}
