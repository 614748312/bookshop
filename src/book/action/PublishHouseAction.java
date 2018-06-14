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

import book.entity.PageBean;
import book.entity.PublishHouse;
import book.service.PublishHouseService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("publishHouseAction") // 创建对象
@Scope("prototype") // 多实例方式创建对象
public class PublishHouseAction extends ActionSupport implements ModelDriven<PublishHouse> {
	private PublishHouse publishHouse = new PublishHouse();

	public PublishHouse getPublishHouse() {
		return publishHouse;
	}

	public void setPublishHouse(PublishHouse publishHouse) {
		this.publishHouse = publishHouse;
	}

	@Autowired
	private PublishHouseService publishHouseService;
	private List<PublishHouse> list = null;

	public List<PublishHouse> getList() {
		return list;
	}

	public void setList(List<PublishHouse> list) {
		this.list = list;
	}

	private int currentPage = 1; // 当前页
	private int pageSize = 2;// 默认每页显示条数
	private PageBean<PublishHouse> pb; // ${pb}

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

	public PageBean<PublishHouse> getPb() {
		return pb;
	}

	public void setPb(PageBean<PublishHouse> pb) {
		this.pb = pb;
	}

	// 查询出版社
	@Action(value = "findPublishHouse", results = { @Result(name = "success", location = "/admin/info/list.jsp") })
	public String findPublishHouse() {
		pb = publishHouseService.findPublishHouse(currentPage, pageSize);
		this.setPb(pb);
		return "success";
	}

	// 添加信息
	@Action(value = "addAddress", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String addPublishHouse() {
		try {
			publishHouseService.addPublishHouse(publishHouse);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 删除信息
	@Action(value = "delPublishHouse", results = {
			@Result(name = "success", location = "/admin/findInfosByPage", type = "redirect") })
	public String delPublishHouse() {
		try {
			publishHouseService.delPublishHouse(publishHouse);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	// 更新信息
	@Action(value = "updatePublishHouse", results = {
			@Result(name = "updateAddress", location = "/admin/findInfosByPage", type = "redirect") })
	public String updatePublishHouse() {
		try {
			publishHouseService.updatePublishHouse(publishHouse);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "updatePublishHouse";
	}

	@Override
	public PublishHouse getModel() {
		// TODO Auto-generated method stub
		return publishHouse;
	}

}
