package book.action;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import book.entity.Address;
import book.service.AddressService;;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("addressAction")  //创建对象
@Scope("prototype")    //多实例方式创建对象
public class AddressAction extends ActionSupport implements ModelDriven<Address>{
   Address address=new Address();
   @Autowired
   private AddressService addressService;
	@Override
	public Address getModel() {
		// TODO Auto-generated method stub
		return address;
	}

}
