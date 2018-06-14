package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.OrdersDao;
import book.service.OrdersService;

@Service("ordersService")
@Transactional
public class OrdersServiceImpl implements OrdersService {
	@Autowired // 注入
	private OrdersDao ordersDao;
}
