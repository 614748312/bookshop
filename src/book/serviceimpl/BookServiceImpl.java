package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.BookDao;
import book.service.BookService;
@Service("bookService")
@Transactional
public class BookServiceImpl implements BookService {
	@Autowired // 注入
	private BookDao bookDao;
}
