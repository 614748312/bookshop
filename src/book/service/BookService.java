package book.service;

import book.entity.Book;
import book.entity.PageBean;

public interface BookService {

	void addBook(Book book);

	void delBook(Book book);

	void updateBook(Book book);

	PageBean<Book> findConditionByKeywords(int currentPage, int pageSize, String condition, String keywords);

}