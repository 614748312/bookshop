package book.dao;

import book.entity.User;

public interface UserDao {

	void addUser(User user);

	User findUserByuserName(String ajaxUsername);

	String check(String userNameAjax);

	
}
