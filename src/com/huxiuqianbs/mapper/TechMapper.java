package com.huxiuqianbs.mapper;

import java.util.List;


import com.huxiuqianbs.pojo.Tech;

public interface TechMapper {
	List<Tech> queryTech();
	List<Tech> getTech();
	void delTech(int techid);
	int addTech(Tech tech);
}
