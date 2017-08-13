package com.acat.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.acat.dao.UserDao;
import com.acat.domain.User;
import com.acat.util.DBCPUtil;

public class UserDaoImpl implements UserDao {
	private QueryRunner qr = new QueryRunner(DBCPUtil.getDataSource());
	@Override
	public void register(User u) {
		try{
			qr.update("insert into user(id,username,password,mobilephone,email,address,image) values(?,?,?,?,?,?,?)", u.getId(),u.getUsername(),u.getPassword(),u.getMobilephone(),u.getEmail(),u.getAddress(),u.getImage());
		}catch(Exception e){
			throw new RuntimeException();
		}
	}
	@Override
	public User login(String username, String password) {
		try{
			return qr.query("select * from user where username=? and password=?", new BeanHandler<User>(User.class),username,password);
		}catch(Exception e){
			throw new RuntimeException();
		}
	}
	@Override
	public List<User> findAll() {
		try{
			return qr.query("select * from user", new BeanListHandler<User>(User.class));
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

}
