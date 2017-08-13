package com.acat.service.impl;

import java.util.List;

import com.acat.dao.UserDao;
import com.acat.dao.impl.UserDaoImpl;
import com.acat.domain.User;
import com.acat.service.UserService;
import com.acat.util.RandomUtil;

public class UserServiceImpl implements UserService {
	private UserDao dao = new UserDaoImpl();
	public void register(User u) {
		u.setId(RandomUtil.random());
		dao.register(u);
	}

	@Override
	public User login(String username, String password) {
		return dao.login(username, password);
	}

	@Override
	public List<User> findAll() {
		return dao.findAll();
	}

}
