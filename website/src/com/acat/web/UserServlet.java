         package com.acat.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.acat.domain.User;
import com.acat.service.UserService;
import com.acat.service.impl.UserServiceImpl;
import com.acat.util.WebUtil;

public class UserServlet extends HttpServlet {
	private UserService s = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String operation = request.getParameter("operation");
		if("register".equals(operation)){
			register(request, response);
		}
		
		if("login".equals(operation)){
			login(request, response);
		}
		
		if("logout".equals(operation)){
			logout(request, response);
		}
	}


	//退出
	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		request.getRequestDispatcher("/").forward(request, response);	
	}


	//登录验证
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User u = s.login(username, password);
		List<User> cs = s.findAll();
		if(u==null){
			request.setAttribute("u", "<script type='text/javascript'>alert('用户名或者密码错误!!!')</script>");
			request.getRequestDispatcher("/manager/login.jsp").forward(request, response);
		}else{
			request.setAttribute("cs", cs);
			request.getSession().setAttribute("u", u);
			request.getRequestDispatcher("/manager/index.jsp").forward(request, response);
		}
	}


	//用户注册
	private void register(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String resultPath = "";
		String storePath = getServletContext().getRealPath("/files");
		try {
			User user = new User();
			
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			//解析请求
			List<FileItem> items = upload.parseRequest(request);
			for(FileItem item:items){
				if(item.isFormField()){
					//封装数据到JavaBean中
					String fieldName = item.getFieldName();//字段名，即javabean的属性名，除了图片
					String fieldValue = item.getString(request.getCharacterEncoding());
					BeanUtils.setProperty(user, fieldName, fieldValue);//除了图片路径，其他数据都有了
				}else{
					//处理文件上传
					InputStream in = item.getInputStream();
					String fileName = item.getName();//   c:\dsf\a.jpg
					fileName = UUID.randomUUID()+fileName.substring(fileName.lastIndexOf("\\")+1);//a.jpg 
					//设置存取的图片文件名
					user.setImage(fileName);
					OutputStream out = new FileOutputStream(storePath+"\\"+fileName);
					byte b[] = new byte[1024];
					int len = -1;
					while((len=in.read(b))!=-1){
						out.write(b, 0, len);
					}
					out.close();
					in.close();
					item.delete();//删除临时文件
				}
			}
			s.register(user);
			request.setAttribute("u", "<script type='text/javascript'>alert('注册成功!!!')</script>");
			request.getRequestDispatcher("/manager/register.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			resultPath = "/message.jsp";
			request.setAttribute("message", "服务器忙");
		}
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
