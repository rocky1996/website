package com.acat.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.acat.dao.BookDao;
import com.acat.domain.Book;
import com.acat.util.DBCPUtil;
import com.acat.util.TransactionUtil;

public class BookDaoImpl implements BookDao {
	private QueryRunner qr = new QueryRunner(DBCPUtil.getDataSource());
	@Override 
	public void addBook(Book b) {
		try{
			qr.update("insert into book(id,name,author,price,image,description,classify_id) values(?,?,?,?,?,?,?)", b.getId(),b.getName(),b.getAuthor(),b.getPrice(),b.getImage(),b.getDescription(),b.getClassify_id());
			//qr.update("insert into book(id,name,author,price,image,description,classify_id) values(?,?,?,?,?,?,?)", b.getId(),b.getName(),b.getAuthor(),b.getPrice(),b.getImage(),b.getDescription())
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

	@Override
	public void deleteBook(String id) {
		try{
			qr.update("delete from book where id=?", id);
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

	@Override
	public void updateBook(Book b) {
		try{
			qr.update("update book set name=?,author=?,price=?,image=?,description=?,classify_id=? where id=?", b.getName(),b.getAuthor(),b.getPrice(),b.getImage(),b.getDescription(),b.getClassify_id(),b.getId());
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Book> findAll() {
		try{
			return qr.query("select * from book", new BeanListHandler<Book>(Book.class));
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

	@Override
	public Book findBook(String id) {
		try{
			return qr.query("select * from book where id=?", new BeanHandler<Book>(Book.class),id);
		}catch(Exception e){
			throw new RuntimeException();
		}
	}

}
