package com.huxiuqianbs.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huxiuqianbs.plugin.interceptor.Page;
import com.huxiuqianbs.pojo.Message;
import com.huxiuqianbs.pojo.User;
import com.huxiuqianbs.service.IUserService;

@Controller
public class UserController {

	@Autowired
	private IUserService userService;

	@RequestMapping("/login.do")
	public String login(User us,Model md,HttpServletRequest request)
			throws ServletException, IOException{
		
		//获取对象账户
		User user = userService.getUser(us.getUserName());

		//登录验证 （账户--密码）
		if(user!=null){
			//账户 密码正确  跳转首页
			if(user.getPwd().equals(us.getPwd())){
				request.getSession().setAttribute("user",user);
				return "/web/index.jsp";
				
			}else{
			//若密码不正确
		        md.addAttribute("msg","密码有误!");
		        return "/login.jsp";
			}
		}else{
		 //用户不存在
		 md.addAttribute("msg","用户不存在...");
		 return "/login.jsp";
		}
	}
	
	/**
	 * 修改密码
	 */
	@RequestMapping("/updatePwd.do")
	public String updatePwd(HttpServletRequest request){
		
		String newpass=request.getParameter("newpass");
		//获得User的session
		User user=(User) request.getSession().getAttribute("user");
		
		  user.setPwd(newpass);
		 //改密码
		 userService.update(user);	
		 
		 request.getSession().removeAttribute("user");
		 
		 return "/login.jsp";
		 
		}
	
	/**
	 * 修改密码
	 */
	@RequestMapping("/forgetPwd.do")
	public String forgetPwd(HttpServletRequest request){
		String uname=request.getParameter("uname");
		String uemail=request.getParameter("uemail");
		String newpass=request.getParameter("newpass");
		//获得User的session
		User user= userService.findByUserName(uname);
		if(uemail.equals(user.getEmail())){
			user.setPwd(newpass);
			//改密码
		  	userService.update(user);	
		  	return "/login.jsp";
			}else{
				request.setAttribute("str", "false");
				return "/web/forgetpwd.jsp";
			} 
		}
	
	@RequestMapping("/addUser.do")
	public String addUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		String realName = request.getParameter("realName");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		System.out.println(userName);
		User resUser = userService.getUser(userName);
		System.out.println(resUser);
		if (resUser == null) {
			User user = new User();
			user.setUserName(userName);
			user.setPwd(pwd);
			user.setRealName(realName);
			user.setTel(tel);
			user.setEmail(email);
			userService.regieter(user);
			request.setAttribute("str", "true");
		//	request.getRequestDispatcher("suc.jsp").forward(request, response);
			return "/login.jsp";
		} else {
			request.setAttribute("str", "false");
		//	request.getRequestDispatcher("lostcid.jsp").forward(request, response);
			return "/web/register.jsp";
		}
	}
	
	 @RequestMapping("/userMag.do")
	    public ModelAndView userMag(HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        List<User> user=userService.findAllUser();
	        mv.addObject("user",user);
	        mv.setViewName("admin/usermanage.jsp");
	        return  mv;
	    }
	 
		@RequestMapping("/delUser/{id}.do")
		public ModelAndView deleteJob(@PathVariable("id")Integer id,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			int id1 = id;
			userService.deleteUser(id1);
			mv.setViewName("../admin/menus.jsp");
			return mv;
		}
}
