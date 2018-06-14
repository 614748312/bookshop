package book.dao;

import java.util.List;

import book.entity.Author;

public interface AuthorDao {

	int getAuthorCount(Integer authorId);

	List<Author> findAuthorByAuthorId(int currentPage, int pageSize, Integer authorId);

	void addAuthor(Author author);

	void delAuthor(Author author);

	void updateAuthor(Author author);

}
