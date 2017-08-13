package com.acat.service.impl;

import java.util.List;

import com.acat.dao.BookDao;
import com.acat.dao.impl.BookDaoImpl;
import com.acat.domain.Book;
import com.acat.service.BookService;
import com.acat.util.RandomUtil;

public class BookServiceImpl implements BookService {
	private BookDao dao = new BookDaoImpl();
	@Override
	public void addBook(Book b) {
		b.setId(RandomUtil.random());
		dao.addBook(b);

	}

	@Override
	public void deleteBook(String id) {
		dao.deleteBook(id);
	}

	@Override
	public void updateBook(Book b) {
		dao.updateBook(b);
	}

	@Override
	public List<Book> findAll() {
		return dao.findAll();
	}

	@Override
	public Book findBook(String id) {
		return dao.findBook(id);
	}

}
