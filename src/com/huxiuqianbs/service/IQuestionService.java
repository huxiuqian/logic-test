package com.huxiuqianbs.service;

import java.util.List;
import com.huxiuqianbs.pojo.Question;

public interface IQuestionService {
	List<Question> queryQue();
	void delQue(int qid);
	void updateQue(Question que);
	int addQue(Question que);
	Question queryQueById(int qid);
}
