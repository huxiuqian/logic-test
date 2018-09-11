package com.huxiuqianbs.mapper;

import java.util.List;

import com.huxiuqianbs.pojo.Admin;

public interface AdminMapper {
	Admin loginAdmin(Admin admin);
	Admin findAdmin();
	Admin findAdminByName(String aname);
	void updateAdmin(Admin admin);
	
}
