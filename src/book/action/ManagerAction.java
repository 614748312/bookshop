package book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import book.entity.Manager;
import book.service.ManagerService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("ordersAction") // 创建对象
@Scope("prototype") // 多实例方式创建对象
public class ManagerAction extends ActionSupport implements ModelDriven<Manager> {
    Manager manager=new Manager();
    HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	@Autowired
	private ManagerService managerService;
	@Override
	public Manager getModel() {
		// TODO Auto-generated method stub
		return manager;
	}

}
