package com.huxiuqianbs.service;

import java.util.List;

import com.huxiuqianbs.pojo.Tech;

public interface ITechService {
	List<Tech> queryTech();
	List<Tech> getTech();
	void delTech(int techid);
	int addTech(Tech tech);
}
