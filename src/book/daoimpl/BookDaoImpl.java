package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.BookDao;
import book.entity.Book;

@Repository("bookDao")
public class BookDaoImpl implements BookDao {
	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;

	@Override
	public void addBook(Book book) {
		hibernateTemplate.save(book);
	}

	@Override
	public void delBook(Book book) {
		hibernateTemplate.delete(book);
	}

	@Override
	public void updateBook(Book book) {
		hibernateTemplate.update(book);
	}

}
