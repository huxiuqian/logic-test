package com.huxiuqianbs.mapper;

import java.util.List;
import java.util.Map;

import com.huxiuqianbs.pojo.Question;

public interface QuestionMapper {
	List<Question> queryQue();
	void delQue(int qid);
	void updateQue(Question que);
	int addQue(Question que);
	Question queryQueById(int qid);
}
