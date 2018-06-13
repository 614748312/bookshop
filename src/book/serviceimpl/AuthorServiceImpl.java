package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.AuthorDao;
import book.service.AuthorService;

@Service("authorService")
@Transactional
public class AuthorServiceImpl implements AuthorService {
	@Autowired // 注入
	private AuthorDao authorDao;
}
