package book.service;

import book.entity.Author;
import book.entity.PageBean;

public interface AuthorService {

	PageBean<Author> findAuthorByAuthorId(int currentPage, int pageSize, Integer authorId);

	void addAuthor(Author author);

	void delAuthor(Author author);

	void updateAuthor(Author author);

}