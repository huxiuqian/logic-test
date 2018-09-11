package com.huxiuqianbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huxiuqianbs.mapper.ChoiceMapper;
import com.huxiuqianbs.pojo.Choice;
import com.huxiuqianbs.service.IChoiceService;

@Service("IChoiceService")
public class ChoiceServiceImpl implements IChoiceService{

	@Autowired
	private ChoiceMapper choiceMapper;
	
	@Override
	public List<Choice> queryChoice() {
		// TODO 自动生成的方法存根
		return choiceMapper.queryChoice();
	}

	@Override
	public void delChoice(int cid) {
		// TODO 自动生成的方法存根
		choiceMapper.delChoice(cid);
	}

	@Override
	public void updateChoice(Choice choice) {
		// TODO 自动生成的方法存根
		choiceMapper.updateChoice(choice);
	}

	@Override
	public int addChoice(Choice choice) {
		// TODO 自动生成的方法存根
		return choiceMapper.addChoice(choice);
	}

	@Override
	public Choice queryChoiceById(int cid) {
		// TODO 自动生成的方法存根
		return choiceMapper.queryChoiceById(cid);
	}

}
