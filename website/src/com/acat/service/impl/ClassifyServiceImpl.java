package com.acat.service.impl;

import java.util.List;

import com.acat.dao.ClassifyDao;
import com.acat.dao.impl.ClassifyDaoImpl;
import com.acat.domain.Classify;
import com.acat.service.ClassifyService;
import com.acat.util.RandomUtil;

public class ClassifyServiceImpl implements ClassifyService {
	private ClassifyDao dao = new ClassifyDaoImpl();
	@Override
	public void addClassify(Classify c) {
		c.setId(RandomUtil.random());
		dao.addClassify(c);
	}

	@Override
	public void deleteClassify(String id) {
		dao.deleteClassify(id);
	}

	@Override
	public void updateClassify(Classify c) {
		dao.updateClassify(c);
	}

	@Override
	public List<Classify> findAll() {
		return dao.findAll();
	}

	@Override
	public Classify findClassify(String id) {
		return dao.findClassify(id);
	}

}
