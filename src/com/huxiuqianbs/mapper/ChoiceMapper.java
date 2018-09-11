package com.huxiuqianbs.mapper;

import java.util.List;

import com.huxiuqianbs.pojo.Choice;

public interface ChoiceMapper {
	List<Choice> queryChoice();
	void delChoice(int cid);
	void updateChoice(Choice choice);
	int addChoice(Choice choice);
	Choice queryChoiceById(int cid);
}
