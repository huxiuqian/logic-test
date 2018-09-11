package com.huxiuqianbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huxiuqianbs.mapper.AdminMapper;
import com.huxiuqianbs.pojo.Admin;
import com.huxiuqianbs.service.IAdminService;

@Service("IAdminService")
public class AdminServiceImpl implements IAdminService{
	
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public Admin loginAdmin(Admin admin) {
		// TODO 自动生成的方法存根
		return adminMapper.loginAdmin(admin);
	}

	@Override
	public Admin findAdmin() {
		// TODO 自动生成的方法存根
		return adminMapper.findAdmin();
	}

	@Override
	public void updateAdmin(Admin admin) {
		// TODO 自动生成的方法存根
		adminMapper.updateAdmin(admin);
	}

	@Override
	public Admin findAdminByName(String aname) {
		// TODO 自动生成的方法存根
		return adminMapper.findAdminByName(aname);
	}

}
