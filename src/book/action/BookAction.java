package book.action;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import book.entity.Book;
import book.service.BookService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("bookAction")  //创建对象
@Scope("prototype")    //多实例方式创建对象
public class BookAction extends ActionSupport implements ModelDriven<Book>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Book book=new Book();
	@Autowired
	private BookService bookService;
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@Override
	public Book getModel() {
		// TODO Auto-generated method stub
		return book;
	}

}
