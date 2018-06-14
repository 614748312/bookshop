package book.dao;

import book.entity.Book;

public interface BookDao {

	void addBook(Book book);

	void delBook(Book book);

	void updateBook(Book book);

}