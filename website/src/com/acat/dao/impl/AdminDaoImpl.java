package com.acat.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.acat.dao.AdminDao;
import com.acat.domain.Admin;
import com.acat.util.DBCPUtil;

public class AdminDaoImpl implements AdminDao {
	private QueryRunner qr = new QueryRunner(DBCPUtil.getDataSource()); 
	@Override
	public Admin login(String username, String password) {
		try{
			return qr.query("select * from admin where username=? and password=?", new BeanHandler<Admin>(Admin.class),username,password);
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

}
