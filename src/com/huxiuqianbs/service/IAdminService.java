package com.huxiuqianbs.service;

import java.util.List;

import com.huxiuqianbs.pojo.Admin;

public interface IAdminService {
	Admin loginAdmin(Admin admin);
	Admin findAdmin();
	Admin findAdminByName(String aname);
	void updateAdmin(Admin admin);
}
