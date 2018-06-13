package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.AddressDao;
import book.service.AuthorService;
@Service("addressService")
@Transactional
public class AddressServiceImpl implements AuthorService {
	@Autowired  //注入
	private AddressDao addressDao;
}
