package book.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
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
		System.out.println("delete");
	}

	@Override
	public void updateBook(Book book) {
		hibernateTemplate.update(book);
	}

	@Override
	public int getConditionCount(String condition, String keywords) {
		String sql = "select count(*) from Book where 1=1";
		List list1 = new ArrayList<>();
		if (keywords != null && keywords.length() > 0) {
			if (condition == "bookName")
				sql += " and bookName = '" + keywords + "'";
		}
		List<Long> list = (List<Long>) hibernateTemplate.find(sql, list1.toArray());
		System.out.println(list.get(0).intValue());
		return list.get(0).intValue();
	}

	@Override
	public List<Book> findConditionByKeywords(int currentPage, int pageSize, String condition, String keywords) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Book.class);
		if (keywords != null && keywords.length() > 0) {
			if (condition == "bookName")
				criteria.add(Restrictions.sqlRestriction(" and bookName = '" + keywords + "'"));
		}
		criteria.addOrder(Order.desc("addTime"));
		System.out.println(
				(List<Book>) hibernateTemplate.findByCriteria(criteria, (currentPage - 1) * pageSize, pageSize));
		return (List<Book>) hibernateTemplate.findByCriteria(criteria, (currentPage - 1) * pageSize, pageSize);
	}

}
