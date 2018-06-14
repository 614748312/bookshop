package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.OrderDao;
import book.entity.Order;
import book.service.OrderService;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {
	@Autowired // 注入
	private OrderDao orderDao;

	@Override
	public void addOrder(Order order) {
		orderDao.addOrder(order);
	}

	@Override
	public void delOrder(Order order) {
		orderDao.delOrder(order);
	}

	@Override
	public void updateOrder(Order order) {
		orderDao.updateOrder(order);
	}
}
