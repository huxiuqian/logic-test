package com.huxiuqianbs.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huxiuqianbs.service.IQuestionService;
import com.huxiuqianbs.mapper.QuestionMapper;

import com.huxiuqianbs.pojo.Question;

@Service("IQuestionService")
public class QuestionServiceImpl implements IQuestionService{

	@Autowired
	private QuestionMapper questionMapper;
	
	@Override
	public List<Question> queryQue() {		
		return questionMapper.queryQue();
	}

	@Override
	public void delQue(int qid) {
		// TODO 自动生成的方法存根
		questionMapper.delQue(qid);
	}

	@Override
	public void updateQue(Question que) {
		// TODO 自动生成的方法存根
		questionMapper.updateQue(que);
	}

	@Override
	public int addQue(Question que) {
		// TODO 自动生成的方法存根
		return questionMapper.addQue(que);
	}

	@Override
	public Question queryQueById(int qid) {
		// TODO 自动生成的方法存根
		return questionMapper.queryQueById(qid);
	}
}
