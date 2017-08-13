package com.acat.dao;

import java.util.List;

import com.acat.domain.User;

public interface UserDao {
	void register(User u);
	User login(String username,String password);
	List<User> findAll();
}
