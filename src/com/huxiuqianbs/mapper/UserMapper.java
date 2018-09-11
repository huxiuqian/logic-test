package com.huxiuqianbs.mapper;

import java.util.List;

import com.huxiuqianbs.plugin.interceptor.Page;
import com.huxiuqianbs.pojo.User;

public interface UserMapper {
	User login(User user);
	void register(User user);
	User findByUserName(String userName);
	List<User> findAllUser();
	User findById(int id);
	void modifyUser(User user);
	void deleteUser(int id);
	List<User> selectPage(Page page);
}
