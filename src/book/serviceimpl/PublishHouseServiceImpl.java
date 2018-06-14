package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.PublishHouseDao;
import book.service.PublishHouseService;

@Service("publishService")
@Transactional
public class PublishHouseServiceImpl implements PublishHouseService {
	@Autowired // 注入
	private PublishHouseDao publishHouseDao;
}
