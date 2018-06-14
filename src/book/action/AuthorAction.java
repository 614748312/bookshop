package book.action;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import book.entity.Author;
import book.service.AuthorService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("bookAction")  //创建对象
@Scope("prototype")    //多实例方式创建对象
public class AuthorAction extends ActionSupport implements ModelDriven<Author>{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Author author=new Author();
    @Autowired
    private AuthorService authorService;
	@Override
	public Author getModel() {
		// TODO Auto-generated method stub
		return author;
	}

}
