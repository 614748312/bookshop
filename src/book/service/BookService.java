package book.service;

import book.entity.Book;

public interface BookService {

	void addBook(Book book);

	void delBook(Book book);

	void updateBook(Book book);

}