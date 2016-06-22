package first.sample.controller;

import java.io.IOException;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="sampleService")
	private SampleService sampleService;
	
	@RequestMapping(value="index.do")
	public ModelAndView index(HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("/index");
		if(request.getSession().getAttribute("admin") != null){
			return new ModelAndView("/dashboard");
		}
		return mv;
	}
	
	@RequestMapping(value="/dblab/openBoardList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/boardList");
	     
	    Map<String,Object> resultMap = sampleService.selectBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/file.do")
	public ModelAndView file(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/file");
		
		Map<String,Object> resultMap = sampleService.selectBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
		
		return mv;
	}
	
	@RequestMapping(value="/dblab/dash.do")
	public ModelAndView dash(CommandMap map) throws Exception{
		ModelAndView mv = new ModelAndView("/dashboard");
		List<Map<String, Object>> list = sampleService.selectCashbook(map.getMap());
		List<Map<String, Object>> list1 = sampleService.selectCount(map.getMap());
		
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		
		return mv;
	}
	@RequestMapping(value="/dblab/admin.do")
	public ModelAndView admin(CommandMap map) throws Exception{
		ModelAndView mv = new ModelAndView("/admin");
		
		List<Map<String, Object>> list = sampleService.selectLecture(map.getMap());
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value="/dblab/logout.do")
	public void logoutProcess(HttpSession session,HttpServletResponse response) throws IOException{
		session.setAttribute("admin", null);
		response.sendRedirect("/first/"); 
	}
	@RequestMapping(value="/dblab/studentList.do")
	public ModelAndView openStudentList(CommandMap map) throws Exception{
		ModelAndView mv = new ModelAndView("/studentList");
		
		List<Map<String, Object>> list = sampleService.selectStudent(map.getMap());
		
		mv.addObject("list", list);
		
		return mv;
	}
	@RequestMapping(value="/loginProcess.do")
	public String loginProcess(CommandMap commandMap, HttpSession session, HttpServletRequest request) throws Exception{
		List<Map<String,Object>> list = sampleService.selectSession(commandMap.getMap());
		if(request.getSession().getAttribute("admin") == null && request.getParameter("id") != null && request.getParameter("password") != null){
			if(request.getParameter("id").equals(list.get(0).get("A_ID")) && request.getParameter("password").equals(list.get(0).get("A_PW"))){
	    		request.getSession().setAttribute("admin", list.get(0).get("A_ID"));
	    		return "redirect:/dblab/dash.do";
	    	}
			else if(request.getParameter("id").equals(list.get(1).get("A_ID")) && request.getParameter("password").equals(list.get(1).get("A_PW"))){
	    		request.getSession().setAttribute("admin", list.get(1).get("A_ID"));
	    		return "redirect:/dblab/dash.do";
	    	}
			else
				return "redirect:/";
		}
		else if(request.getSession().getAttribute("admin") != null){
			return "redirect:/dblab/dash.do";
		}
		return null;
	}
	
	
	@RequestMapping(value="/dblab/passChange.do")
	public String passChange(CommandMap commandMap, HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception
	{
		List<Map<String, Object>> list = sampleService.selectSession(commandMap.getMap());
		if(request.getParameter("inputAdminCurPw").equals(list.get(0).get("A_PW")) 
				&& request.getParameter("inputAdminNewPw").equals(request.getParameter("inputAdminNewPwR")))
			{
				sampleService.updatePass(commandMap.getMap(), request);
				return "redirect:/dblab/admin.do";
			}
		return "redirect:/dblab/dash.do";
	}
	@RequestMapping(value="/dblab/passChangeT.do")
	public String passChangeT(CommandMap commandMap, HttpServletRequest request, HttpSession session) throws Exception
	{
		List<Map<String, Object>> list = sampleService.selectSession(commandMap.getMap());
		if(request.getParameter("inputCurPw").equals(list.get(1).get("A_PW")) 
				&& request.getParameter("inputNewPw").equals(request.getParameter("inputNewPwR")))
			{
				sampleService.updatePassT(commandMap.getMap(), request);
				return "redirect:/dblab/admin.do";
			}
		return "redirect:/dblab/dash.do";
	}
	
	@RequestMapping(value="/dblab/openBoardWrite.do")
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/boardWrite");
		
		return mv;
	}
	@RequestMapping(value="/dblab/fileWrite.do")
	public ModelAndView fileWrite(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/fileWrite");
		
		return mv;
	}

	@RequestMapping(value="/dblab/openBoardDetail.do")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/boardDetail");
	     
	    Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map")); //게시글 상세정보
	    mv.addObject("list", map.get("list")); //첨부파일의 목록
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/fileDetail.do")
	public ModelAndView fileDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/fileDetail");
	     
	    Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map")); //게시글 상세정보
	    mv.addObject("list", map.get("list")); //첨부파일의 목록
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/openBoardUpdate.do")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/boardUpdate");
	     
	    Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/fileUpdate.do")
	public ModelAndView fileUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/fileUpdate");
	     
	    Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/studentEnroll.do")
	public ModelAndView studentInsert(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/studentList.do");
	    
		sampleService.insertStudent(commandMap.getMap(), request); 	    
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/lectureEnroll.do")
	public ModelAndView lectureInsert(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/admin.do");
	    
		sampleService.insertLecture(commandMap.getMap(), request); 	    
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/insertBoard.do")
	public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/dblab/file.do");
	     
	    sampleService.insertBoard(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/updateBoard.do")
	public ModelAndView updateBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/fileDetail.do");
	     
	    sampleService.updateBoard(commandMap.getMap(), request);
	     
	    mv.addObject("IDX", commandMap.get("IDX"));
	    return mv;
	}
	@RequestMapping(value="/dblab/deleteBoard.do")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/dblab/file.do"); 
	    sampleService.deleteBoard(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/dblab/deleteStudent.do")
	public ModelAndView deleteStudent(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/studentList.do");
		sampleService.deleteStudent(commandMap.getMap());

		return mv;
	}
	@RequestMapping(value="/dblab/deleteLecture.do")
	public ModelAndView deleteLecture(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/admin.do");
		sampleService.deleteLecture(commandMap.getMap());

		return mv;
	}
	@RequestMapping(value="/dblab/cashbook.do")
	public ModelAndView cashbook(CommandMap map) throws Exception{
		ModelAndView mv = new ModelAndView("/cashbook");
		
		List<Map<String, Object>> list = sampleService.selectCashbook(map.getMap());
		
		mv.addObject("list", list);
		
		return mv;
	}
	@RequestMapping(value="/dblab/cashbookEnroll.do")
	public ModelAndView cashbookInsert(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/cashbook.do");
		sampleService.insertCashbook(commandMap.getMap(), request);
		updateTotal(commandMap.getMap(), request);
	    return mv;
	}
	public void updateTotal(Map<String, Object> map, HttpServletRequest request) throws Exception{
		sampleService.updateTotal(map, request);
	}
	@RequestMapping(value="/dblab/cashCheck.do")
	public ModelAndView cashCheck(CommandMap map) throws Exception{
		ModelAndView mv = new ModelAndView("/cashCheck");
		List<Map<String, Object>> list = sampleService.selectCashCheck(map.getMap());
		mv.addObject("list", list);
		
		return mv;
	}
	@RequestMapping(value="/dblab/updateCheck.do")
	public ModelAndView updateCheck(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/studentList.do");
		sampleService.updateCheck(commandMap.getMap());
		
		return mv;
	}
	@RequestMapping(value="/dblab/updateCheckReturn.do")
	public ModelAndView updateCheckReturn(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/cashCheck.do");
		sampleService.updateCheckReturn(commandMap.getMap());
		
		return mv;
	}
	@RequestMapping(value="/dblab/dayLog.do")
	public ModelAndView dayLog(CommandMap map) throws Exception{
		ModelAndView mv = new ModelAndView("/dayLog");
		List<Map<String, Object>> list = sampleService.selectDayLog(map.getMap());
		mv.addObject("list", list);
		
		return mv;
	}
	@RequestMapping(value="/dblab/dayLogEnroll.do")
	public ModelAndView dayLogInsert(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/dayLog.do");
		sampleService.insertDayLog(commandMap.getMap(), request);
	    return mv;
	}
	@RequestMapping(value="/dblab/studentLogEnroll.do")
	public ModelAndView studentLogInsert(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/dblab/studentLog.do");
		sampleService.insertStudentLog(commandMap.getMap(), request);
	    return mv;
	}
	
	@RequestMapping(value="/dblab/studentLog.do")
	public ModelAndView studentLogList(CommandMap map) throws Exception{
		ModelAndView mv = new ModelAndView("/studentLog");
		
		List<Map<String, Object>> list = sampleService.selectStudentLog(map.getMap());
		mv.addObject("list", list);
		
		return mv;
	}
}
