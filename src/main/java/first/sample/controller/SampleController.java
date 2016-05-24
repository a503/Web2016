package first.sample.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import first.login.user.User;
import first.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());
	
	
	@Resource(name="sampleService")
	private SampleService sampleService;
	
	@RequestMapping(value="/openSampleBoardList.do")
    public ModelAndView openSampleBoardList(Map<String,Object> commandMap) throws Exception{
    	//ModelAndView mv = new ModelAndView("/boardList");
		ModelAndView mv = new ModelAndView("/boardList");

    	return mv;
    }
	@RequestMapping(value="/dash.do")
	public ModelAndView dash() throws Exception{
		ModelAndView mv = new ModelAndView("/dashboard");
		return mv;
	}
	@RequestMapping(value="/admin.do")
	public ModelAndView admin() throws Exception{
		ModelAndView mv = new ModelAndView("/admin");
		return mv;
	}
	@RequestMapping(value="/file.do")
	public ModelAndView file() throws Exception{
		ModelAndView mv = new ModelAndView("/filelibrary");
		return mv;
	}
	@RequestMapping(value="/logout.do")
	public void logoutProcess(HttpSession session,HttpServletResponse response) throws IOException{
		session.setAttribute("admin", null);
		response.sendRedirect("/first/"); 
	}
	@RequestMapping(value="/loginProcess.go")
	public ModelAndView loginProcess(Map<String, Object> commandMap, HttpSession session, HttpServletRequest request) throws Exception{
		ModelAndView mv;
		List<Map<String,Object>> list = sampleService.selectBoardList(commandMap);
		if(request.getParameter("id").equals(list.get(0).get("A_ID")) && request.getParameter("password").equals(list.get(0).get("A_PW"))){
    		request.getSession().setAttribute("admin", list.get(0).get("A_ID"));
    	}
		else if(request.getParameter("id").equals(list.get(1).get("A_ID")) && request.getParameter("password").equals(list.get(1).get("A_PW"))){
    		request.getSession().setAttribute("admin", list.get(1).get("A_ID"));
    	}
    	else{
    		return new ModelAndView("");
    	}
		mv = new ModelAndView("/dashboard");
    	mv.addObject("list", list);
    	return mv;
	}
}
