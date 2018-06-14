package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.serviceimpl.ManagerDao;
@Repository("orderDao")
public class ManagerDaoimpl implements ManagerDao{
	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;


}
