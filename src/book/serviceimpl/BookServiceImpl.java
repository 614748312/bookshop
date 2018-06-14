package book.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.BookDao;
import book.entity.Book;
import book.entity.PageBean;
import book.service.BookService;

@Service("bookService")
@Transactional
public class BookServiceImpl implements BookService {
	@Autowired // 注入
	private BookDao bookDao;

	@Override
	public void addBook(Book book) {
		bookDao.addBook(book);
	}

	@Override
	public void delBook(Book book) {
		bookDao.delBook(book);
	}

	@Override
	public void updateBook(Book book) {
		bookDao.updateBook(book);
	}

	@Override
	public PageBean<Book> findConditionByKeywords(int currentPage, int pageSize, String condition, String keywords) {
		int count = bookDao.getConditionCount(condition, keywords); // 求当前类别信息数量
		int totalPage = (int) Math.ceil(count * 1.0 / pageSize);// 求总页数
		List<Book> list = bookDao.findConditionByKeywords(currentPage, pageSize, condition, keywords); // 求当前页的集合数据
		PageBean<Book> pb = new PageBean<>();
		pb.setCount(count);
		if (currentPage == 0)
			currentPage = 1;
		pb.setCurrentPage(currentPage);
		pb.setList(list);
		pb.setPageSize(pageSize);
		pb.setTotalPage(totalPage);
		return pb;
	}
}
