package com.acat.service.impl;

import com.acat.dao.AdminDao;
import com.acat.dao.impl.AdminDaoImpl;
import com.acat.domain.Admin;
import com.acat.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private AdminDao dao = new AdminDaoImpl();
	@Override
	public Admin login(String username, String password) {
		return dao.login(username, password);
	}

}
