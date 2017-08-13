package com.acat.service;

import java.util.List;

import com.acat.domain.Classify;

public interface ClassifyService {
	void addClassify(Classify c);
	void deleteClassify(String id);
	void updateClassify(Classify c);
	List<Classify> findAll();
	Classify findClassify(String id);
}	
