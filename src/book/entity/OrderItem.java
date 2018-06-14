package book.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_orderItem")

public class OrderItem {
	@Id
	@GeneratedValue(generator = "orderItemNumber")
	@GenericGenerator(name = "orderItemNumber", strategy = "native")
	private Integer orderItemNumber;// 订单项id
	@ManyToOne
	@JoinColumn(name = "orderNumber")
	private Orders orders;// 订单实体类
	@ManyToOne
	@JoinColumn(name = "bookISBN")
	private Book book;// 图书编号
	@ManyToOne
	@JoinColumn(name = "publishHouseId")
	private PublishHouse publishHouse;// 出版社id
	@ManyToOne
	@JoinColumn(name = "authorId")
	private Author author;// 图书作者id
	private Date deliveTime;// 发货时间
	private boolean orderStatus;// 图书状态，默认为false（未发货），ture（已发货）
	private Integer bookCount;// 图书数量
	private Date payTime;// 订单支付时间

	public Integer getOrderItemNumber() {
		return orderItemNumber;
	}

	public void setOrderItemNumber(Integer orderItemNumber) {
		this.orderItemNumber = orderItemNumber;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrderNumber(Orders orders) {
		this.orders = orders;
	}

	public PublishHouse getPublishHouse() {
		return publishHouse;
	}

	public void setPublishHouse(PublishHouse publishHouse) {
		this.publishHouse = publishHouse;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Date getDeliveTime() {
		return deliveTime;
	}

	public void setDeliveTime(Date deliveTime) {
		this.deliveTime = deliveTime;
	}

	public boolean isOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(boolean orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Integer getBookCount() {
		return bookCount;
	}

	public void setBookCount(Integer bookCount) {
		this.bookCount = bookCount;
	}

	public Date getPayTime() {
		return payTime;
	}

	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	@Override
	public String toString() {
		return "OrderItem [orderItemNumber=" + orderItemNumber + ", orders=" + orders + ", book=" + book
				+ ", publishHouse=" + publishHouse + ", author=" + author + ", deliveTime=" + deliveTime
				+ ", orderStatus=" + orderStatus + ", bookCount=" + bookCount + ", payTime=" + payTime + "]";
	}

}
