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

import com.acat.domain.Book;
import com.acat.domain.Classify;
import com.acat.domain.User;
import com.acat.service.BookService;
import com.acat.service.ClassifyService;
import com.acat.service.impl.BookServiceImpl;
import com.acat.service.impl.ClassifyServiceImpl;
import com.acat.util.WebUtil;

public class BookServlet extends HttpServlet {
	private ClassifyService s1 = new ClassifyServiceImpl();
	private BookService s2 = new BookServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String operation = request.getParameter("operation");
		if("showAllClassify".equals(operation)){
			showAllClassify(request, response);
		}
		
		if("addbook".equals(operation)){
			addbook(request, response);
		}
		
		if("showAllbook".equals(operation)){
			showAllbook(request, response);
		}
		
		if("deletebook".equals(operation)){
			deletebook(request, response);
		}
		
		if("updatebookUI".equals(operation)){
			updatebookUI(request, response);
		}
		
		if("updatebook".equals(operation)){
			updatebook(request, response);
		}
	}

	
	private void updatebook(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
//		System.out.println(request.getParameter("id"));
//		Book b = WebUtil.fillBean(request, Book.class);
//		System.out.println(b);
//		s2.updateBook(b);
//		request.setAttribute("uu", "<script type='text/javascript'>alert('修改图书成功!!!')</script>");
//		request.getRequestDispatcher("/servlet/BookServlet?operation=showAllbook").forward(request, response);
		
		String resultPath = "";
		String storePath = getServletContext().getRealPath("/file");
		try {
			Book book = new Book();
			
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			//解析请求
			List<FileItem> items = upload.parseRequest(request);
			for(FileItem item:items){
				if(item.isFormField()){
					//封装数据到JavaBean中
					String fieldName = item.getFieldName();//字段名，即javabean的属性名，除了图片
					String fieldValue = item.getString(request.getCharacterEncoding());
					BeanUtils.setProperty(book, fieldName, fieldValue);//除了图片路径，其他数据都有了
				}else{
					//处理文件上传
					InputStream in = item.getInputStream();
					String fileName = item.getName();//   c:\dsf\a.jpg
					fileName = UUID.randomUUID()+fileName.substring(fileName.lastIndexOf("\\")+1);//a.jpg 
					//设置存取的图片文件名
					book.setImage(fileName);
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
			s2.updateBook(book);
			request.setAttribute("uu", "<script type='text/javascript'>alert('修改图书成功!!!')</script>");
			request.getRequestDispatcher("/servlet/BookServlet?operation=showAllbook").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			resultPath = "manager/message.jsp";
			request.setAttribute("message", "服务器忙");
		}
		
	}


	private void updatebookUI(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		List<Classify> cs = s1.findAll();
		Book b = s2.findBook(id);
		request.setAttribute("cs", cs);
		request.setAttribute("b", b);
		request.getRequestDispatcher("/manager/editBook.jsp").forward(request, response);
	}


	//删除图书
	private void deletebook(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		s2.deleteBook(id);
		request.setAttribute("uu", "<script type='text/javascript'>alert('删除图书成功!!!')</script>");
		request.getRequestDispatcher("/servlet/BookServlet?operation=showAllbook").forward(request, response);
	}


	//显示所有的图书
	private void showAllbook(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Book> cs = s2.findAll();
		request.setAttribute("cs", cs);
		request.getRequestDispatcher("/manager/listbook.jsp").forward(request, response);
	}


	//添加图书
	private void addbook(HttpServletRequest request,
			HttpServletResponse response) {
		String resultPath = "";
		String storePath = getServletContext().getRealPath("/file");
		try {
			Book book = new Book();
			
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			//解析请求
			List<FileItem> items = upload.parseRequest(request);
			for(FileItem item:items){
				if(item.isFormField()){
					//封装数据到JavaBean中
					String fieldName = item.getFieldName();//字段名，即javabean的属性名，除了图片
					String fieldValue = item.getString(request.getCharacterEncoding());
					BeanUtils.setProperty(book, fieldName, fieldValue);//除了图片路径，其他数据都有了
				}else{
					//处理文件上传
					InputStream in = item.getInputStream();
					String fileName = item.getName();//   c:\dsf\a.jpg
					fileName = UUID.randomUUID()+fileName.substring(fileName.lastIndexOf("\\")+1);//a.jpg 
					//设置存取的图片文件名
					book.setImage(fileName);
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
			s2.addBook(book);
			request.getSession().setAttribute("b", book);
			request.setAttribute("uu", "<script type='text/javascript'>alert('添加图书成功!!!')</script>");
			request.getRequestDispatcher("/manager/addbook.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			resultPath = "manager/message.jsp";
			request.setAttribute("message", "服务器忙");
		}
	}


	private void showAllClassify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Classify> cs = s1.findAll();
		request.setAttribute("cs", cs);
		request.getRequestDispatcher("/manager/addbook.jsp").forward(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
