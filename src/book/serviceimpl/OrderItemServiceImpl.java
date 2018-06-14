package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.OrderItemDao;
import book.service.OrderItemService;

@Service("orderItemService")
@Transactional
public class OrderItemServiceImpl implements OrderItemService {
	@Autowired // 注入
	private OrderItemDao orderItemDao;
}
