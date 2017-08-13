package com.acat.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acat.domain.Admin;
import com.acat.service.AdminService;
import com.acat.service.impl.AdminServiceImpl;

public class AdminServlet extends HttpServlet {
	private AdminService s = new AdminServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String operation = request.getParameter("operation");
		if("login".equals(operation)){
			login(request, response);
		}
	}

	//管理员登录
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Admin a = s.login(username, password);
		if(a==null){
			request.setAttribute("uu", "<script type='text/javascript'>alert('用户名或者密码错误!!!')</script>");
			request.getRequestDispatcher("/manager/admin.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("a", a);
			request.getRequestDispatcher("/manager/adminheader.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
