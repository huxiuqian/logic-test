package com.huxiuqianbs.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huxiuqianbs.pojo.Admin;
import com.huxiuqianbs.pojo.Question;
import com.huxiuqianbs.pojo.User;
import com.huxiuqianbs.service.IQuestionService;


@Controller
public class QuestionController {
	
	@Autowired
	private IQuestionService queService;
    		
		//问答题生成
		@RequestMapping("/showQue.do")
		public String showQue(HttpServletRequest request,Model md){
			Map<String,Object> map=new HashMap<String,Object>();
			//随机生成
			List<Question> list=queService.queryQue();
			if(list.size()==0){
			 return "/web/error.jsp";	
			}
			
			if(list.size()<3){
			 md.addAttribute("msg","数据不够,无法生成随机试题!");
			 return "/web/book.jsp";
			}
			
			//存放id的集合
			List<Integer> ids=new ArrayList<Integer>();
			
			//随机
			for(int i=0;i<list.size();i++){	
			  ids.add(list.get(i).getQid());
			}
			
			//最大值
			 int max=0;
			 int min = 0;
			for(int i=0;i<list.size();i++){
			 if(i==0){
				 min = list.get(i).getQid();
			 }
			 if(max<list.get(i).getQid()){
				max=list.get(i).getQid(); 
			 }
			
			 if(min>list.get(i).getQid()){
				min=list.get(i).getQid(); 
			 }
			
			}
			
			List<Integer> ints = new ArrayList<Integer>();
			Random ran=new Random();
			//随机截取3个字符生成试卷
			for(int j=1;j<4;j++){
			int sum = 0;
			 int index=ran.nextInt(max-min)+min;
			 
			 int ss = 0;
			 for(Question q: list){
				 if(index==q.getQid()){
					 ss++;
					 break;
				 }
				
			 }
			 
			 if(ss!=1){
				 
				 j--;
				 continue;
			 }
			 
			 if(ints.size()==0){
				 ints.add(index);
			 }else{
				 
				 for(Integer s: ints){
					 if(s==index){
						 j --;
						 break;
					 }
						 sum ++;
				 }
				 
			 }
			 if(sum==ints.size()){
				 ints.add(index);
			 }
			 
			 
			}
			int j = 1;
			for(int i =0 ;i<ints.size();i++){
				
				for(Question q : list){
					 if(q.getQid()==ints.get(i)){
						 md.addAttribute("que"+j, q);
						 j++;
					 }
				 }
				
			 }
			
			return "/web/book.jsp";
		}	
		
		@RequestMapping("/queMag.do")
	    public ModelAndView queMag(HttpSession session){
	        ModelAndView mv=new ModelAndView();
	        List<Question> que=queService.queryQue();
	        mv.addObject("que",que);
	        mv.setViewName("admin/questionmanage.jsp");
	        return  mv;
	    }
	 
		@RequestMapping("/delQue/{qid}.do")
		public ModelAndView delQue(@PathVariable("qid")Integer qid,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			int id1 = qid;
			queService.delQue(id1);
			mv.setViewName("../admin/menus.jsp");
			return mv;
		}
		
		 @RequestMapping("/addQue.do")
		    public String addQue(HttpServletRequest request,HttpSession session){
			 	session=request.getSession();
		        String qcet=request.getParameter("qcet");
		        String answer=request.getParameter("answer");
		        //新建Topic
		        Question question=new Question();
		        question.setQcet(qcet);
		        question.setAnswer(answer);
		        queService.addQue(question);
		        return "/queMag.do";
		    }
		 
		 	@RequestMapping("/getQue/{qid}.do")
			public ModelAndView getQue(@PathVariable("qid")Integer qid,HttpServletRequest request){
				ModelAndView mv=new ModelAndView();
				int queid = qid;
				Question que = queService.queryQueById(queid);
				mv.addObject("que",que);
				mv.setViewName("../admin/updatequestion.jsp");
				return mv;
				 
				}
		 
			@RequestMapping("/updateQue/{qid}.do")
			public ModelAndView updateQue(@PathVariable("qid")Integer qid,HttpServletRequest request){
				ModelAndView mv=new ModelAndView();
				int queid = qid;
				Question que = queService.queryQueById(queid);
				String qcet=request.getParameter("qcet");
				String answer=request.getParameter("answer");
				que.setQcet(qcet);
				que.setAnswer(answer);
				 //改密码
				queService.updateQue(que); 
				mv.addObject("que",que);
				mv.setViewName("/queMag.do");
				return mv;
				 
				}
}
