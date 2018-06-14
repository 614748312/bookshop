package book.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_orders")
public class Orders {
	@Id
	@GeneratedValue(generator = "orderNumber")
	@GenericGenerator(name = "orderNumber", strategy = "native")
	private Integer orderNumber;// 订单编号
	private Double totalMoney;// 总订单金额
	@ManyToOne
	@JoinColumn(name = "userName")
	private User user;// 用户名

	public Integer getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(Integer orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Orders [orderNumber=" + orderNumber + ", totalMoney=" + totalMoney + ", user=" + user + "]";
	}

}
