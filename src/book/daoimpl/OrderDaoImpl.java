package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.OrderDao;
import book.entity.Order;

@Repository("orderDao")
public class OrderDaoImpl implements OrderDao {

	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;

	@Override
	public void addOrder(Order order) {
		hibernateTemplate.save(order);
	}

	@Override
	public void delOrder(Order order) {
		hibernateTemplate.delete(order);
	}

	@Override
	public void updateOrder(Order order) {
		hibernateTemplate.update(order);
	}
}
