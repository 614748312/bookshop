package book.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.AuthorDao;
import book.entity.Author;

@Repository("authorDao")
public class AuthorDaoImpl implements AuthorDao {
	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;

	@Override
	public int getAuthorCount(Integer authorId) {
		String sql = "select count(*) from tab_author where 1=1";
		List list1 = new ArrayList<>();
		if (authorId != null) {
			sql += " and authorId = '" + authorId + "'";
		}
		List<Long> list = (List<Long>) hibernateTemplate.find(sql, list1.toArray());
		return list.get(0).intValue();
	}

	@Override
	public List<Author> findAuthorByAuthorId(int currentPage, int pageSize, Integer authorId) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Author.class);
		if (authorId != null) {
			criteria.add(Restrictions.eq("authorId", authorId));
		}
		return (List<Author>) hibernateTemplate.findByCriteria(criteria, (currentPage - 1) * pageSize, pageSize);
	}

	@Override
	public void addAuthor(Author author) {
		hibernateTemplate.save(author);
	}

	@Override
	public void delAuthor(Author author) {
		hibernateTemplate.delete(author);
	}

	@Override
	public void updateAuthor(Author author) {
		hibernateTemplate.update(author);
	}
}
