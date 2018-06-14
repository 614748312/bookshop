package book.dao;

import java.util.List;

import book.entity.Book;

public interface BookDao {

	void addBook(Book book);

	void delBook(Book book);

	void updateBook(Book book);

	int getConditionCount(String condition, String keywords);

	List<Book> findConditionByKeywords(int currentPage, int pageSize, String condition, String keywords);

}