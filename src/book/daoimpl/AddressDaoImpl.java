package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.AddressDao;

@Repository("addressDao")
public class AddressDaoImpl implements AddressDao {
	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;
}
