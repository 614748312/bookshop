package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.ItemsDao;
import book.service.ItemsService;
@Service("itemsService")
@Transactional
public class ItemsServiceImpl implements ItemsService {
	@Autowired // 注入
	private ItemsDao itemsDao;
}
