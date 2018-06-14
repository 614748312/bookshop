package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.BookDao;

@Repository("bookDao")
public class BookDaoImpl implements BookDao {
	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;

}
