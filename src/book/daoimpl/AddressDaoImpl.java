package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository("addressDao")
public class AddressDaoImpl implements AddressDao {
	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;
}
