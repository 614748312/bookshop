package book.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import book.entity.Order;
import book.entity.PageBean;
import book.service.OrderService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("ordersAction") // 创建对象
@Scope("prototype") // 多实例方式创建对象
public class OrderAction extends ActionSupport implements ModelDriven<Order> {
	 Order order = new Order();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	String userName = (String) session.getAttribute("userName");

	public Order getOrder() {
		return order;
	}

	public void setOrders(Order order) {
		this.order = order;
	}

	@Autowired
	private OrderService orderService;
	private List<Order> list = null;

	public List<Order> getList() {
		return list;
	}

	public void setList(List<Order> list) {
		this.list = list;
	}

	private int currentPage = 1; // 当前页
	private int pageSize = 2;// 默认每页显示条数
	private PageBean<Order> pb; // ${pb}

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

	public PageBean<Order> getPb() {
		return pb;
	}

	public void setPb(PageBean<Order> pb) {
		this.pb = pb;
	}

	// 添加信息
	@Action(value = "addOrder", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String addOrder() {
		try {
			orderService.addOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 删除信息
	@Action(value = "delOrders", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String delOrder() {
		try {
			orderService.delOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 更新信息
	@Action(value = "updateOrder", results = {
			@Result(name = "updateOrder", location = "/admin/findInfosByPage", type = "redirect") })
	public String updateOrders() {
		try {
			orderService.updateOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "updateOrder";
	}

	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		return order;
	}

}
