package com.acat.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acat.domain.Classify;
import com.acat.service.ClassifyService;
import com.acat.service.impl.ClassifyServiceImpl;
import com.acat.util.WebUtil;

public class ClassifyServlet extends HttpServlet {
	private ClassifyService s = new ClassifyServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String operation = request.getParameter("operation");
		if("addclassify".equals(operation)){
			addclassify(request, response);
		}
		
		if("showclassify".equals(operation)){
			showclassify(request, response);
		}
		
		if("deleteclassify".equals(operation)){
			deleteclassify(request, response);
		}
		
		if("updateclassifyUI".equals(operation)){
			updateclassifyUI(request, response);
		}
		
		if("updateclassify".equals(operation)){
			updateclassify(request, response);
		}
	}

	private void updateclassify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Classify c = WebUtil.fillBean(request, Classify.class);
		s.updateClassify(c);
		request.setAttribute("uu", "<script type='text/javascript'>alert('修改分类成功!!!')</script>");
		request.getRequestDispatcher("/servlet/ClassifyServlet?operation=showclassify").forward(request, response);
	}

	private void updateclassifyUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Classify c = s.findClassify(id);
		request.setAttribute("c", c);
		request.getRequestDispatcher("/manager/editClassify.jsp").forward(request, response);
	}

	//删除操作
	private void deleteclassify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		s.deleteClassify(id);
		request.setAttribute("uu", "<script type='text/javascript'>alert('删除分类成功!!!')</script>");
		request.getRequestDispatcher("/servlet/ClassifyServlet?operation=showclassify").forward(request, response);
	}

	//显示所有的分类
	private void showclassify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Classify> cs = s.findAll();
		request.setAttribute("cs", cs);
		request.getRequestDispatcher("/manager/listClassify.jsp").forward(request, response);
	}

	//添加分类
	private void addclassify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Classify c = WebUtil.fillBean(request, Classify.class);
		s.addClassify(c);
		request.setAttribute("uu", "<script type='text/javascript'>alert('添加分类成功!!!')</script>");
		request.getRequestDispatcher("/manager/addclassify.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
