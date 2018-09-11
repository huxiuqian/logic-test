package com.huxiuqianbs.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huxiuqianbs.pojo.Admin;
import com.huxiuqianbs.pojo.Tech;
import com.huxiuqianbs.service.ITechService;

@Controller
public class TechController {

	@Autowired
	private ITechService techService;
	
	
	
	@RequestMapping("/techMag.do")
    public ModelAndView techMag(HttpSession session){
        ModelAndView mv=new ModelAndView();
        List<Tech> tech=techService.queryTech();
        mv.addObject("tech",tech);
        mv.setViewName("admin/techmanage.jsp");
        return  mv;
    }
 
	@RequestMapping("/delTech/{techid}.do")
	public ModelAndView delTech(@PathVariable("techid")Integer techid,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int id1 = techid;
		techService.delTech(id1);
		mv.setViewName("../admin/menus.jsp");
		return mv;
	}
	
	 @RequestMapping("/showTech.do")
	    public ModelAndView showTech(HttpSession session){
	        ModelAndView mv=new ModelAndView();

	        List<Tech> tech=techService.getTech();
	  
	   /*     //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);*/

	        mv.addObject("tech",tech);
	        mv.setViewName("web/tech.jsp");
	        return mv;
	    }
	 
	 @RequestMapping("/addTech.do")
	    public String addTech(HttpServletRequest request,HttpSession session){
		 	session=request.getSession();
	        String techtopic=request.getParameter("techtopic");
	        String techcet=request.getParameter("techcet");
	        Timestamp techtime = new Timestamp(System.currentTimeMillis());
	        //新建Topic
	        Tech tech=new Tech();
	        tech.setTechtopic(techtopic);
	        tech.setTechcet(techcet);	       
	        tech.setTechtime(techtime);
	        techService.addTech(tech);
	        return "/techMag.do";
	    }
}
