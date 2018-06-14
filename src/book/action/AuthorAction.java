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
import book.entity.Author;
import book.entity.PageBean;
import book.service.AuthorService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("authorAction") // 创建对象
@Scope("prototype") // 多实例方式创建对象
public class AuthorAction extends ActionSupport implements ModelDriven<Author> {
	private Author author = new Author();
	private Integer authorId;

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Integer getAuthorId() {
		return authorId;
	}

	public void setAuthorId(Integer authorId) {
		this.authorId = authorId;
	}

	@Autowired
	private AuthorService authorService;
	private List<Author> list = null;

	public List<Author> getList() {
		return list;
	}

	public void setList(List<Author> list) {
		this.list = list;
	}

	private int currentPage = 1; // 当前页
	private int pageSize = 2;// 默认每页显示条数
	private PageBean<Author> pb; // ${pb}

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

	public PageBean<Author> getPb() {
		return pb;
	}

	public void setPb(PageBean<Author> pb) {
		this.pb = pb;
	}

	// 根据作者Id查询作者
	@Action(value = "/admin/findAllInfo", results = { @Result(name = "success", location = "/admin/info/list.jsp") })
	public String findAuthorByAuthorId() {
		pb = authorService.findAuthorByAuthorId(currentPage, pageSize, authorId);
		this.setPb(pb);
		return "success";
	}

	// 添加信息
	@Action(value = "addAuthor", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String addAuthor() {
		try {
			authorService.addAuthor(author);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 删除信息
	@Action(value = "delAuthor", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String delAddress() {
		try {
			authorService.delAuthor(author);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 更新信息
	@Action(value = "updateAuthor", results = {
			@Result(name = "updateAuthor", location = "/admin/findInfosByPage", type = "redirect") })
	public String updateInfo() {
		try {
			authorService.updateAuthor(author);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "updateAuthor";
	}

	@Override
	public Author getModel() {
		// TODO Auto-generated method stub
		return author;
	}

}
