package book.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_user")
public class User {
	@Id
	@GeneratedValue(generator = "userId")
	@GenericGenerator(name = "userId", strategy = "native")
	private Integer userId;// 用户id
	private String userName;// 用户名
	private String password;// 用户密码
	private String email;// 电子邮件地址
	private String phoneNumber;// 联系电话
	private String sex;// 用户性别
	private String nickName;// 用户昵称
	private Date birthday;// 用户出生日期

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getId() {
		return userId;
	}

	public void setId(Integer id) {
		this.userId = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", sex=" + sex + ", nickName=" + nickName + ", birthday=" + birthday
				+ "]";
	}

}
