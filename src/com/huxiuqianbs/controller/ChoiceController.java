package com.huxiuqianbs.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huxiuqianbs.pojo.Choice;
import com.huxiuqianbs.pojo.Question;
import com.huxiuqianbs.pojo.Tech;
import com.huxiuqianbs.service.IChoiceService;

@Controller
public class ChoiceController {

	@Autowired
	private IChoiceService choiceService;
	
	@RequestMapping("/choiceMag.do")
    public ModelAndView choiceMag(HttpSession session){
        ModelAndView mv=new ModelAndView();
        List<Choice> choice=choiceService.queryChoice();
        mv.addObject("choice",choice);
        mv.setViewName("admin/choicemanage.jsp");
        return  mv;
    }
 
	@RequestMapping("/delChoice/{cid}.do")
	public ModelAndView delChoice(@PathVariable("cid")Integer cid,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int id1 = cid;
		choiceService.delChoice(id1);
		mv.setViewName("../admin/menus.jsp");
		return mv;
	}
	
	 @RequestMapping("/addChoice.do")
	    public String addChoice(HttpServletRequest request,HttpSession session){
		 	session=request.getSession();
	        String ccet=request.getParameter("ccet");
	        String a=request.getParameter("a");
	        String b=request.getParameter("b");
	        String c=request.getParameter("c");
	        String d=request.getParameter("d");
	        String correct=request.getParameter("correct");
	        //新建Topic
	        Choice choice=new Choice();
	        choice.setCcet(ccet);
	        choice.setA(a);
	        choice.setB(b);
	        choice.setC(c);
	        choice.setD(d);
	        choice.setCorrect(correct);
	        choiceService.addChoice(choice);
	        return "/choiceMag.do";
	    }
	 
	 	@RequestMapping("/getChoice/{cid}.do")
		public ModelAndView getChoice(@PathVariable("cid")Integer cid,HttpServletRequest request){
			ModelAndView mv=new ModelAndView();
			int chid = cid;
			Choice choice = choiceService.queryChoiceById(chid);
			mv.addObject("choice",choice);
			mv.setViewName("../admin/updatechoice.jsp");
			return mv;
			 
			}
	 
		@RequestMapping("/updateChoice/{cid}.do")
		public ModelAndView updateChoice(@PathVariable("cid")Integer cid,HttpServletRequest request){
			ModelAndView mv=new ModelAndView();
			int chid = cid;
			Choice choice = choiceService.queryChoiceById(chid);
			String ccet=request.getParameter("ccet");
			String a=request.getParameter("a");
			String b=request.getParameter("b");
			String c=request.getParameter("c");
			String d=request.getParameter("d");
			String correct=request.getParameter("correct");
			choice.setCcet(ccet);
			choice.setA(a);
			choice.setB(b);
			choice.setC(c);
			choice.setD(d);
			choice.setCorrect(correct);
			 //改密码
			choiceService.updateChoice(choice); 
			mv.addObject("choice",choice);
			mv.setViewName("/choiceMag.do");
			return mv;
			 
			}
		
		//随机测试
		@RequestMapping("/showChoice.do")
		public String showChoice(HttpServletRequest request,Model md){
			Map<String,Object> map=new HashMap<String,Object>();
			//随机试卷
			List<Choice> list=choiceService.queryChoice();
			if(list.size()==0){
			 return "/web/error.jsp";	
			}
			
			if(list.size()<5){
			 md.addAttribute("msg","数据不够,无法生成随机试题!");
			 return "/web/error.jsp";
			}
			
			//存放id的集合
			List<Integer> ids=new ArrayList<Integer>();
			
			//随机
			for(int i=0;i<list.size();i++){	
			  ids.add(list.get(i).getCid());
			}
			
			//最大值
			 int max=0;
			 int min = 0;
			for(int i=0;i<list.size();i++){
			 if(i==0){
				 min = list.get(i).getCid();
			 }
			 if(max<list.get(i).getCid()){
				max=list.get(i).getCid(); 
			 }
			
			 if(min>list.get(i).getCid()){
				min=list.get(i).getCid(); 
			 }
			
			}
			
			List<Integer> ints = new ArrayList<Integer>();
			Random ran=new Random();
			//随机截取3个字符生成试卷
			for(int j=1;j<6;j++){
			int sum = 0;
			 int index=ran.nextInt(max-min)+min;
			 
			 int ss = 0;
			 for(Choice c: list){
				 if(index==c.getCid()){
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
				
				for(Choice c : list){
					 if(c.getCid()==ints.get(i)){
						 md.addAttribute("choice"+j, c);
						 j++;
					 }
				 }
				
			 }
			
			return "/web/choicetest.jsp";
		}
		
		@RequestMapping("/score.do")
		public ModelAndView score(HttpServletRequest request){
			ModelAndView mv=new ModelAndView();
			String r1=request.getParameter("radio1");
			String r2=request.getParameter("radio2");
			String r3=request.getParameter("radio3");
			String r4=request.getParameter("radio4");
			String r5=request.getParameter("radio5");
			String d1=request.getParameter("id1");
			String d2=request.getParameter("id2");
			String d3=request.getParameter("id3");
			String d4=request.getParameter("id4");
			String d5=request.getParameter("id5");
			System.out.println(d1);
			System.out.println(r1);
			int id1 = Integer.parseInt(d1);
			int id2 = Integer.parseInt(d2);
			int id3 = Integer.parseInt(d3);
			int id4 = Integer.parseInt(d4);
			int id5 = Integer.parseInt(d5);
			Choice c1 = choiceService.queryChoiceById(id1);
			Choice c2 = choiceService.queryChoiceById(id2);
			Choice c3 = choiceService.queryChoiceById(id3);
			Choice c4 = choiceService.queryChoiceById(id4);
			Choice c5 = choiceService.queryChoiceById(id5);
			int s = 0;
			if(r1.equals(c1.getCorrect())){
				s = s+ 20;
			}
			if(r2.equals(c2.getCorrect())){
				s = s+ 20;
			}
			if(r3.equals(c3.getCorrect())){
				s = s+ 20;
			}
			if(r4.equals(c4.getCorrect())){
				s = s+ 20;
			}
			if(r5.equals(c5.getCorrect())){
				s = s+ 20;
			}
			mv.addObject("c1",c1);
			mv.addObject("c2",c2);
			mv.addObject("c3",c3);
			mv.addObject("c4",c4);
			mv.addObject("c5",c5);
			mv.addObject("score",s);
			mv.setViewName("/web/choicescore.jsp");
			return mv;
			 
			}
		
		//随机测试
		@RequestMapping("/showC.do")
		public String showC(HttpServletRequest request,Model md){
			Map<String,Object> map=new HashMap<String,Object>();
			//随机试卷
			List<Choice> list=choiceService.queryChoice();
			if(list.size()==0){
			 return "/web/error.jsp";	
			}
			
			if(list.size()<5){
			 md.addAttribute("msg","数据不够,无法生成随机试题!");
			 return "/web/error.jsp";
			}
			
			//存放id的集合
			List<Integer> ids=new ArrayList<Integer>();
			
			//随机
			for(int i=0;i<list.size();i++){	
			  ids.add(list.get(i).getCid());
			}
			
			//最大值
			 int max=0;
			 int min = 0;
			for(int i=0;i<list.size();i++){
			 if(i==0){
				 min = list.get(i).getCid();
			 }
			 if(max<list.get(i).getCid()){
				max=list.get(i).getCid(); 
			 }
			
			 if(min>list.get(i).getCid()){
				min=list.get(i).getCid(); 
			 }
			
			}
			
			List<Integer> ints = new ArrayList<Integer>();
			Random ran=new Random();
			//随机截取3个字符生成试卷
			for(int j=1;j<2;j++){
			int sum = 0;
			 int index=ran.nextInt(max-min)+min;
			 
			 int ss = 0;
			 for(Choice c: list){
				 if(index==c.getCid()){
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
			for(int i =0 ;i<ints.size();i++){
				
				for(Choice c : list){
					 if(c.getCid()==ints.get(i)){
						 md.addAttribute("choice", c);
					 }
				 }
				
			 }
			
			return "/web/choice.jsp";
		}
		
}
