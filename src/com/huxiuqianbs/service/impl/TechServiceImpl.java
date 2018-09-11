package com.huxiuqianbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huxiuqianbs.mapper.TechMapper;
import com.huxiuqianbs.pojo.Tech;
import com.huxiuqianbs.service.ITechService;

@Service("ITechService")
public class TechServiceImpl implements ITechService{

	@Autowired
	private TechMapper techMapper;
	
	@Override
	public List<Tech> queryTech() {
		// TODO 自动生成的方法存根
		return techMapper.queryTech();
	}

	@Override
	public List<Tech> getTech() {
		// TODO 自动生成的方法存根
		return techMapper.getTech();
	}

	@Override
	public void delTech(int techid) {
		// TODO 自动生成的方法存根
		techMapper.delTech(techid);
	}

	@Override
	public int addTech(Tech tech) {
		// TODO 自动生成的方法存根
		return techMapper.addTech(tech);
	}

}
