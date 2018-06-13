package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.ItemsDao;
@Repository("itemsDao")
public class ItemsDaoImpl implements ItemsDao {
	@Autowired //按类型注入
	private HibernateTemplate hibernateTemplate;
}
