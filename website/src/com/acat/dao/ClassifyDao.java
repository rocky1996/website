package com.acat.dao;

import java.util.List;

import com.acat.domain.Classify;

public interface ClassifyDao {
	void addClassify(Classify c);
	void deleteClassify(String id);
	void updateClassify(Classify c);
	List<Classify> findAll();
	Classify findClassify(String id);
}
