package com.acat.service;

import java.util.List;

import com.acat.domain.User;

public interface UserService {
	void register(User u);
	User login(String username,String password);
	List<User> findAll();
}
