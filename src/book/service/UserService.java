package book.service;

import book.entity.User;

public interface UserService {

	void register(User user);

	User findUserByuserName(String ajaxUsername);

	String check(String userNameAjax);

}
