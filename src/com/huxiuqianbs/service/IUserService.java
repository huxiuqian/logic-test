package com.huxiuqianbs.service;

import java.util.List;

import com.huxiuqianbs.plugin.interceptor.Page;
import com.huxiuqianbs.pojo.User;

public interface IUserService {
	public User getUser(String userName);
	public void update(User user);
	public void regieter(User user);
	List<User> selectPage(Page page);
	List<User> findAllUser();
	void deleteUser(int id);
	User findById(int id);
	User findByUserName(String userName);
}
