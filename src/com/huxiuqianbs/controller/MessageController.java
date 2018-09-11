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

import com.huxiuqianbs.pojo.Message;
import com.huxiuqianbs.pojo.Msg;
import com.huxiuqianbs.pojo.User;
import com.huxiuqianbs.service.IMessageService;
import com.huxiuqianbs.service.IUserService;



@Controller
public class MessageController {
	
	 @Autowired
		private IMessageService messageService;
	 @Autowired
		private IUserService userService;
	 
	 @RequestMapping("/showTalk.do")
	    public ModelAndView showTalk(HttpSession session){
	        ModelAndView mv=new ModelAndView();

	        List<Msg> talk=messageService.getTalkMsg();
	        
	   /*     //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);*/

	        mv.addObject("talk",talk);
	        mv.setViewName("web/talk.jsp");
	        return  mv;
	    }
	 
	 @RequestMapping("/ssTalk.do")
	    public ModelAndView ssTalk(HttpServletRequest request,HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        String topic=request.getParameter("topic");
	        List<Msg> talk=messageService.selectByTopic(topic);
	        
	   /*     //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);*/

	        mv.addObject("talk",talk);
	        mv.setViewName("web/talk.jsp");
	        return  mv;
	    }
	 
	 @RequestMapping("/showChat.do")
	    public ModelAndView showChat(HttpSession session){
	        ModelAndView mv=new ModelAndView();

	        List<Msg> chat=messageService.getChatMsg();
	  
	   /*     //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);*/

	        mv.addObject("chat",chat);
	        mv.setViewName("web/chat.jsp");
	        return  mv;
	    }
	 
	 @RequestMapping("/ssChat.do")
	    public ModelAndView ssChat(HttpServletRequest request,HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        String topic=request.getParameter("topic");
	        List<Msg> chat=messageService.selectChatByTopic(topic);
	        
	   /*     //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);*/

	        mv.addObject("chat",chat);
	        mv.setViewName("web/chat.jsp");
	        return  mv;
	    }
	 
	 @RequestMapping("/showJob.do")
	    public ModelAndView showJob(HttpSession session){
	        ModelAndView mv=new ModelAndView();

	        List<Msg> job=messageService.getJobMsg();
	  
	   /*     //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);*/

	        mv.addObject("job",job);
	        mv.setViewName("web/job.jsp");
	        return  mv;
	    }
	 
	 @RequestMapping("/ssJob.do")
	    public ModelAndView ssJob(HttpServletRequest request,HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        String topic=request.getParameter("topic");
	        List<Msg> job=messageService.selectJobByTopic(topic);
	        
	   /*     //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);*/

	        mv.addObject("job",job);
	        mv.setViewName("web/job.jsp");
	        return  mv;
	    }
	 
	 @RequestMapping("/addTalk.do")
	    public String addTalk(HttpServletRequest request,HttpSession session){
		 	session=request.getSession();
			User user = (User) session.getAttribute("user");
			int id = user.getId();
	        String mtopic=request.getParameter("mtopic");
	        String mcet=request.getParameter("mcet");
	        Timestamp mtime = new Timestamp(System.currentTimeMillis());
	        //新建Topic
	        Message message=new Message();
	        message.setId(id);
	        message.setTid(1);
	        message.setMtopic(mtopic);
	        message.setMcet(mcet);	       
	        message.setMtime(mtime);
	        messageService.addMessage(message);
	        return "/showTalk.do";
	    }
	 
	 @RequestMapping("/addChat.do")
	    public String addChat(HttpServletRequest request,HttpSession session){
		 	session=request.getSession();
			User user = (User) session.getAttribute("user");
			int id = user.getId();
	        String mtopic=request.getParameter("mtopic");
	        String mcet=request.getParameter("mcet");
	        Timestamp mtime = new Timestamp(System.currentTimeMillis());
	        //新建Topic
	        Message message=new Message();
	        message.setId(id);
	        message.setTid(2);
	        message.setMtopic(mtopic);
	        message.setMcet(mcet);	       
	        message.setMtime(mtime);
	        messageService.addMessage(message);
	        return "/showChat.do";
	    }

	 
	 @RequestMapping("/addJob.do")
	    public String addJob(HttpServletRequest request,HttpSession session){
		 	session=request.getSession();
			User user = (User) session.getAttribute("user");
			int id = user.getId();
	        String mtopic=request.getParameter("mtopic");
	        String mcet=request.getParameter("mcet");
	        Timestamp mtime = new Timestamp(System.currentTimeMillis());
	        //新建Topic
	        Message message=new Message();
	        message.setId(id);
	        message.setTid(3);
	        message.setMtopic(mtopic);
	        message.setMcet(mcet);	       
	        message.setMtime(mtime);
	        messageService.addMessage(message);
	        return "/showJob.do";
	    }
	 
	 @RequestMapping("/talkMag.do")
	    public ModelAndView talkMag(HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        List<Msg> talk=messageService.getTalkMsg();
	        mv.addObject("talk",talk);
	        mv.setViewName("admin/talkmanage.jsp");
	        return  mv;
	    }
	 @RequestMapping("/chatMag.do")
	    public ModelAndView chatMag(HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        List<Msg> chat=messageService.getChatMsg();
	        mv.addObject("chat",chat);
	        mv.setViewName("admin/chatmanage.jsp");
	        return  mv;
	    }
	 
	 @RequestMapping("/jobMag.do")
	    public ModelAndView jobMag(HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        List<Msg> job=messageService.getJobMsg();
	        mv.addObject("job",job);
	        mv.setViewName("admin/jobmanage.jsp");
	        return  mv;
	    }
	 
		@RequestMapping("/delTalk/{mid}.do")
		public ModelAndView deleteTalk(@PathVariable("mid")Integer mid,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			int msgid = mid;
			messageService.delMessage(msgid);
			mv.setViewName("../admin/menus.jsp");
			return mv;
		}
		@RequestMapping("/delChat/{mid}.do")
		public ModelAndView deleteChat(@PathVariable("mid")Integer mid,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			int msgid = mid;
			messageService.delMessage(msgid);
			mv.setViewName("../admin/menus.jsp");
			return mv;
		}
		@RequestMapping("/delJob/{mid}.do")
		public ModelAndView deleteJob(@PathVariable("mid")Integer mid,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			int msgid = mid;
			messageService.delMessage(msgid);
			mv.setViewName("../admin/menus.jsp");
			return mv;
		}

}
