package book.daoimpl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import book.dao.UserDao;
import book.entity.User;

@Repository(value="userDao")
public class UserDaoImpl implements UserDao{
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public void addUser(User user) {
		hibernateTemplate.save(user);
	}
	@Override
	public User findUserByuserName(String ajaxUsername) {
		List<User> list = (List<User>) hibernateTemplate.find("from User where userName=?", ajaxUsername);
		return list.isEmpty()?null:list.get(0);
	}
	
	@Override
	public String check(String userNameAjax) {
		List<User> list=(List<User>)hibernateTemplate.find("from User where userName=?", userNameAjax);
		return list.isEmpty()?null:list.get(0).getPassword();
	}
	@Override
	public User findUserByEmail(String recipient) {
		// TODO Auto-generated method stub
		List<User> list = (List<User>) hibernateTemplate.find("from User where email=?", recipient);
		return list.isEmpty()?null:list.get(0);
	}
	
}
