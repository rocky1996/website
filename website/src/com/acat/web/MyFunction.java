package com.acat.web;

import com.acat.domain.Classify;
import com.acat.service.ClassifyService;
import com.acat.service.impl.ClassifyServiceImpl;

public class MyFunction {
	private static ClassifyService s = new ClassifyServiceImpl();
	public static String getCategoryName(String id){
		Classify c = s.findClassify(id);
		if(c != null){
			return c.getName();
		}
		return "";
	}
}
