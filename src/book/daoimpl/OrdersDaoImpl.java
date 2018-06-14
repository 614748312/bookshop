package book.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.OrdersDao;
import book.entity.Orders;

@Repository("ordersDao")
public class OrdersDaoImpl implements OrdersDao {

	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;

	@Override
	public void addOrders(Orders orders) {
		hibernateTemplate.save(orders);
	}

	@Override
	public void delOrders(Orders orders) {
		hibernateTemplate.delete(orders);
	}

	@Override
	public void updateOrders(Orders orders) {
		hibernateTemplate.update(orders);
	}
}
