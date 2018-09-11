package com.huxiuqianbs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huxiuqianbs.pojo.Admin;
import com.huxiuqianbs.pojo.User;
import com.huxiuqianbs.service.IAdminService;

@Controller
public class AdminController {

	@Autowired
	private IAdminService adminService;
	
	@RequestMapping("/loginAdmin.do")
	public String login(Admin ad,Model md,HttpServletRequest request)
			throws ServletException, IOException{
		String aname = request.getParameter("aname");
		String apwd = request.getParameter("apwd");	
		//获取对象账户
		Admin admin = adminService.findAdminByName(aname);

		//登录验证 （账户--密码）
		if(admin!=null){
			//账户 密码正确  跳转首页
			if(admin.getApwd().equals(apwd)){
				request.getSession().setAttribute("admin",admin);
				return "./admin/main.jsp";
				
			}else{
			//若密码不正确
		        md.addAttribute("msg","密码有误!");
		        return "./admin/index.jsp";
			}
		}else{
		 //用户不存在
		 md.addAttribute("msg","用户不存在...");
		 return "./admin/index.jsp";
		}
	}
	/**
	 * 管理员信息修改
	 */
	@RequestMapping("/updateAdmin.do")
	public ModelAndView updateAdmin(HttpServletRequest request){
		ModelAndView mv=new ModelAndView();
		Admin admin = adminService.findAdmin();
		String aname=request.getParameter("aname");
		String apwd=request.getParameter("apwd");
		String arealName=request.getParameter("arealName");
		String atel=request.getParameter("atel");
		String aemail=request.getParameter("aemail");		
		//获得User的session
		Admin ad=(Admin) request.getSession().getAttribute("admin");
		ad.setAname(aname);
		ad.setApwd(apwd);
		ad.setArealName(arealName);
		ad.setAtel(atel);
		ad.setAemail(aemail);
		 //改密码
		adminService.updateAdmin(ad);;		 
		mv.addObject("admin",admin);
		mv.setViewName("./admin/menus.jsp");
		return mv;
		 
		}
}
