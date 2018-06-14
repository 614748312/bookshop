package book.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import book.entity.Book;
import book.entity.PageBean;
import book.service.BookService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("bookAction") // 创建对象
@Scope("prototype") // 多实例方式创建对象
public class BookAction extends ActionSupport implements ModelDriven<Book> {
	private Book book = new Book();

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@Override
	public Book getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	@Autowired
	private BookService bookService;
	private List<Book> list = null;

	public List<Book> getList() {
		return list;
	}

	public void setList(List<Book> list) {
		this.list = list;
	}

	private int currentPage = 1; // 当前页
	private int pageSize = 2;// 默认每页显示条数
	private PageBean<Book> pb; // ${pb}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public PageBean<Book> getPb() {
		return pb;
	}

	public void setPb(PageBean<Book> pb) {
		this.pb = pb;
	}

	// 添加信息
	@Action(value = "addBook", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String addBook() {
		try {
			bookService.addBook(book);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 删除信息
	@Action(value = "delBook", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String delBook() {
		try {
			bookService.delBook(book);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 更新信息
	@Action(value = "updateBook", results = {
			@Result(name = "updateBook", location = "/admin/findInfosByPage", type = "redirect") })
	public String updateBook() {
		try {
			bookService.updateBook(book);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "updateBook";
	}
}
