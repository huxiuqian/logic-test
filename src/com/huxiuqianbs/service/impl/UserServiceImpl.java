package com.huxiuqianbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huxiuqianbs.mapper.UserMapper;
import com.huxiuqianbs.plugin.interceptor.Page;
import com.huxiuqianbs.pojo.User;
import com.huxiuqianbs.service.IUserService;

@Service("IUserService")
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public void update(User user) {
		userMapper.modifyUser(user);
	}
	
	@Override
	public User getUser(String userName) {
		return userMapper.findByUserName(userName);
	}
	
	@Override
	public List<User> selectPage(Page page) {
		return userMapper.selectPage(page);
	}

	@Override
	public void regieter(User user) {
		userMapper.register(user);
	}

	@Override
	public List<User> findAllUser() {
		// TODO 自动生成的方法存根
		return userMapper.findAllUser();
	}

	@Override
	public void deleteUser(int id) {
		// TODO 自动生成的方法存根
		userMapper.deleteUser(id);
	}

	@Override
	public User findById(int id) {
		// TODO 自动生成的方法存根
		return userMapper.findById(id);
	}

	@Override
	public User findByUserName(String userName) {
		// TODO 自动生成的方法存根
		return userMapper.findByUserName(userName);
	}
	
}
