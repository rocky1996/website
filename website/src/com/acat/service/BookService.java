package com.acat.service;

import java.util.List;

import com.acat.domain.Book;

public interface BookService {
	void addBook(Book b);
	void deleteBook(String id);
	void updateBook(Book b);
	List<Book> findAll();
	Book findBook(String id);
}
