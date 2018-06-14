package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.OrdersDao;
import book.entity.Orders;
import book.service.OrdersService;

@Service("ordersService")
@Transactional
public class OrdersServiceImpl implements OrdersService {
	@Autowired // 注入
	private OrdersDao ordersDao;

	@Override
	public void addOrders(Orders orders) {
		ordersDao.addOrders(orders);
	}

	@Override
	public void delOrders(Orders orders) {
		ordersDao.delOrders(orders);
	}

	@Override
	public void updateOrders(Orders orders) {
		ordersDao.updateOrders(orders);
	}
}
