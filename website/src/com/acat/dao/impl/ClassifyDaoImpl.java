package com.acat.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.acat.dao.ClassifyDao;
import com.acat.domain.Classify;
import com.acat.util.DBCPUtil;

public class ClassifyDaoImpl implements ClassifyDao {
	private QueryRunner qr = new QueryRunner(DBCPUtil.getDataSource());
	@Override
	public void addClassify(Classify c) {
		try{
			qr.update("insert into classify(id,name,description) values(?,?,?)",c.getId(),c.getName(),c.getDescription());
		}catch(Exception e){
			throw new RuntimeException();
		}

	}

	@Override
	public void deleteClassify(String id) {
		try{
			qr.update("delete from classify where id=?",id);
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

	@Override
	public void updateClassify(Classify c) {
		try{
			qr.update("update classify set name=?,description=? where id=?",c.getName(),c.getDescription(),c.getId());
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

	@Override
	public List<Classify> findAll() {
		try{
			return qr.query("select * from classify", new BeanListHandler<Classify>(Classify.class));
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

	@Override
	public Classify findClassify(String id) {
		try{
			return qr.query("select * from classify where id=?", new BeanHandler<Classify>(Classify.class),id);
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

}
