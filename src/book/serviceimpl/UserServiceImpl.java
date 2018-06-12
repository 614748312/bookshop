package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.UserDao;
import book.entity.User;
import book.service.UserService;
@Service(value="userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	
	@Override
	public void register(User user) {
		userDao.addUser(user);
	}

	@Override
	public User findUserByuserName(String ajaxUsername) {
		return userDao.findUserByuserName(ajaxUsername);
	}

	@Override
	public String check(String userNameAjax) {
		return userDao.check(userNameAjax);
	}

}
