package book.action;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import book.entity.Diary;
import book.service.DiaryService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("diaryAction")  //创建对象
@Scope("prototype")    //多实例方式创建对象
public class DiaryAction extends ActionSupport implements ModelDriven<Diary>{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Diary diary=new Diary();
    @Autowired
    private DiaryService diaryService;
	@Override
	public Diary getModel() {
		// TODO Auto-generated method stub
		return diary;
	}

}
