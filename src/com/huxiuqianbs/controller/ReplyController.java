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
import com.huxiuqianbs.pojo.Reply;
import com.huxiuqianbs.pojo.Rpy;
import com.huxiuqianbs.pojo.User;
import com.huxiuqianbs.service.IMessageService;
import com.huxiuqianbs.service.IReplyService;



@Controller
public class ReplyController {

	@Autowired
	private IMessageService messageService;
	@Autowired
	private IReplyService replyService;



	@RequestMapping("/showReply/{mid}.do")
	public ModelAndView showReply(@PathVariable("mid")Integer mid,HttpServletRequest request,HttpSession session){
		ModelAndView mv=new ModelAndView();
		int msgid = mid;
		List<Message> message=messageService.getMessage(msgid);

		List<Rpy> reply=replyService.getRpy(msgid);
		/*	for(int i = 0 ; i < message.size() ; i++) {
				System.out.println(message.get(i));
			}
	       //获取用户信息
	        int id=(int) session.getAttribute("id");
	        User user=userService.getUserById(uid);
		 */
		mv.addObject("message",message);
		mv.addObject("reply",reply);
		mv.setViewName("../web/reply.jsp");
		return mv;
	}

	@RequestMapping("/addReply.do")
	public String addReply(HttpServletRequest request,HttpSession session){
		session=request.getSession();
		User user = (User) session.getAttribute("user");
		int id = user.getId();
		String msgid=request.getParameter("mid");
		int mid = Integer.parseInt(msgid);
		String rcet=request.getParameter("rcet");
		Timestamp rtime = new Timestamp(System.currentTimeMillis());
		//新建Topic
		Reply reply=new Reply();
		reply.setMid(mid);
		reply.setId(id);
		reply.setRcet(rcet);	       
		reply.setRtime(rtime);
		replyService.addReply(reply);
		return "/showReply/"+mid+".do";
	}
}
