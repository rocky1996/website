package com.acat.dao;

import com.acat.domain.Admin;

public interface AdminDao {
	Admin login(String username,String password);
}
