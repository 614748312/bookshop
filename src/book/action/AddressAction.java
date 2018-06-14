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

import book.entity.Address;
import book.entity.PageBean;
import book.service.AddressService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("addressAction") // 创建对象
@Scope("prototype") // 多实例方式创建对象
public class AddressAction extends ActionSupport implements ModelDriven<Address> {
	private Address address = new Address();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	String userName = (String) session.getAttribute("userName");

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Autowired
	private AddressService addressService;
	private List<Address> list = null;

	public List<Address> getList() {
		return list;
	}

	public void setList(List<Address> list) {
		this.list = list;
	}

	private int currentPage = 1; // 当前页
	private int pageSize = 2;// 默认每页显示条数
	private PageBean<Address> pb; // ${pb}

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

	public PageBean<Address> getPb() {
		return pb;
	}

	public void setPb(PageBean<Address> pb) {
		this.pb = pb;
	}

	// 根据用户名查询收货地址
	@Action(value = "findAdderssByUsername", results = { @Result(name = "success", location = "/admin/info/list.jsp") })
	public String findAdderssByUsername() {
		pb = addressService.findAdderssByUsername(currentPage, pageSize, userName);
		this.setPb(pb);
		return "success";
	}

	// 添加信息
	@Action(value = "addAddress", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String addAdderss() {
		try {
			addressService.addAddress(address);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 删除信息
	@Action(value = "delAddress", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String delAddress() {
		try {
			addressService.delAddress(address);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 更新信息
	@Action(value = "updateAddress", results = {
			@Result(name = "updateAddress", location = "/admin/findInfosByPage", type = "redirect") })
	public String updateInfo() {
		try {
			addressService.updateAddress(address);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "updateAddress";
	}

	@Override
	public Address getModel() {
		// TODO Auto-generated method stub
		return address;
	}

}
