package book.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import book.entity.User;
import book.service.UserService;
import cn.dsna.util.images.ValidateCode;
import net.sf.json.JSONObject;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven<User>,
ServletRequestAware,ServletResponseAware{
	private static final long serialVersionUID = 1L;
	User user=new User();
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Resource(name="userService")
	private UserService userService;
	private String yzm;
	protected HttpServletRequest request ;
	protected HttpServletResponse response;
	private String checkresult;
	public String getCheckresult() {
		return checkresult;
	}
	public void setCheckresult(String checkresult) {
		this.checkresult = checkresult;
	}
	public String getYzm() {
		return yzm;
	}
	public void setYzm(String yzm) {
		this.yzm = yzm;
	}
	
	@Action("validateCode")//生成验证码
	public String validateCode(){
		//宽，高，字符数，干扰线条数
	ValidateCode vc=new ValidateCode(120, 35, 4, 20);
	
	String code = vc.getCode();
	ServletActionContext.getRequest().getSession().setAttribute("session_code",code);
	
	try {
		vc.write(response.getOutputStream());
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	return null;
		
	}
	
	
	
	@Action(value = "checkuserNamepassword")
	public void checkuserNamepassword() {

		try {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter pw = response.getWriter();
			String userNameAjax = request.getParameter("UserName");
			String passwordAjax = request.getParameter("Password");
			String yzmajax = request.getParameter("Yzm");
			String session_code = (String) request.getSession().getAttribute("session_code");
			String password=userService.check(userNameAjax);
			if(!yzmajax.equalsIgnoreCase(session_code)){
				JSONObject nonejson = new JSONObject();
				nonejson.put("checkResult", "none");
				pw.write(nonejson.toString());
			} else if (password == null) {
				JSONObject nulljson = new JSONObject();
				nulljson.put("checkResult", null);
				pw.write(nulljson.toString());
			} else if (password != null && password.equals(passwordAjax) == true) {
				JSONObject truejson = new JSONObject();
				truejson.put("checkResult", true);
				pw.write(truejson.toString());
			} else if (password != null && password.equals(passwordAjax) == false) {
				JSONObject falsejson = new JSONObject();
				falsejson.put("checkResult", false);
				pw.write(falsejson.toString());
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	
	@Action(value="findByuserName")//判断用户名是否存在
	public void findByuserName(){ 
	   try{
	    response.setContentType("text/html;charset=UTF-8");  
	    String ajaxUsername=request.getParameter("UserName");
		User existUser =userService.findUserByuserName(ajaxUsername);    
		PrintWriter pw = response.getWriter();
	    if(existUser != null){    
	    	JSONObject falsejson = new JSONObject();
	    	falsejson.put("checkResult", false);
			pw.write(falsejson.toString());//用户名已存在 
	    }else{  
	    	JSONObject truejson = new JSONObject();
	    	truejson.put("checkResult", true);
			pw.write(truejson.toString());//用户名不存在
	    }  
		}catch (IOException e) {
			e.printStackTrace();
		}
	  
	}  
	
	@Action(value="register",results={
			@Result(name="success",location="/success.jsp"),
			})
	public String register(){
		response.setContentType("text/html;charset=UTF-8");
		userService.register(user);
		return "success";
	}
	@Action(value="sendEmail")
	public void sendEmail(){
		
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}
	@Override
	public User getModel() {
		return user;
	}

}
