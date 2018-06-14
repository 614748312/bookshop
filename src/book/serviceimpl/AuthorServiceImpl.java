package book.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.AuthorDao;
import book.entity.Author;
import book.entity.PageBean;
import book.service.AuthorService;

@Service("authorService")
@Transactional
public class AuthorServiceImpl implements AuthorService {
	@Autowired // 注入
	private AuthorDao authorDao;

	@Override
	public PageBean<Author> findAuthorByAuthorId(int currentPage, int pageSize, Integer authorId) {
		int count = authorDao.getAuthorCount(authorId); // 求当前类别信息数量
		int totalPage = (int) Math.ceil(count * 1.0 / pageSize);// 求总页数
		List<Author> list = authorDao.findAuthorByAuthorId(currentPage, pageSize, authorId); // 求当前页的集合数据
		PageBean<Author> pb = new PageBean<>();
		pb.setCount(count);
		if (currentPage == 0)
			currentPage = 1;
		pb.setCurrentPage(currentPage);
		pb.setList(list);
		pb.setPageSize(pageSize);
		pb.setTotalPage(totalPage);
		return pb;
	}

	@Override
	public void addAuthor(Author author) {
		authorDao.addAuthor(author);

	}

	@Override
	public void delAuthor(Author author) {
		authorDao.delAuthor(author);
	}

	@Override
	public void updateAuthor(Author author) {
		authorDao.updateAuthor(author);
	}
}
