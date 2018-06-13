package book.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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
	private String userName;// 用户名
	private Integer orderItemId;// 订单项Id
	private Integer itemsId;// 商品项id

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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getItemsId() {
		return itemsId;
	}

	public void setItemsId(Integer itemsId) {
		this.itemsId = itemsId;
	}

	@Override
	public String toString() {
		return "Orders [orderNumber=" + orderNumber + ", totalMoney=" + totalMoney + ", userName=" + userName
				+ ", orderItemsId=" + orderItemId + ", itemsId=" + itemsId + "]";
	}

	public Integer getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(Integer orderItemId) {
		this.orderItemId = orderItemId;
	}

}
