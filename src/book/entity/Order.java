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
@Table(name = "tab_order")

public class Order {
	@Id
	@GeneratedValue(generator = "orderNumber")
	@GenericGenerator(name = "orderNumber", strategy = "native")
	private Integer orderNumber;// 订单id
	@ManyToOne
	@JoinColumn(name = "bookISBN")
	private Book book;// 图书实体类
	@ManyToOne
	@JoinColumn(name = "publishHouseId")
	private PublishHouse publishHouse;// 出版社实体类
	@ManyToOne
	@JoinColumn(name = "authorId")
	private Author author;// 图书作者实体类
	@ManyToOne
	@JoinColumn(name = "userName")
	private User user;// 用户实体类
	private Date deliveTime;// 发货时间
	private boolean deliverStatus;// 发货状态，默认为false（0未发货），ture（1已发货）
	private Date payTime;// 订单支付时间
	private boolean payStatus;// 支付状态，默认为false（0未支付），ture（1已支付）
	private Integer bookCount;// 图书数量

	public Integer getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(Integer orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
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

	public boolean isDeliverStatus() {
		return deliverStatus;
	}

	public void setDeliverStatus(boolean deliverStatus) {
		this.deliverStatus = deliverStatus;
	}

	public Date getPayTime() {
		return payTime;
	}

	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}

	public boolean isPayStatus() {
		return payStatus;
	}

	public void setPayStatus(boolean payStatus) {
		this.payStatus = payStatus;
	}

	public Integer getBookCount() {
		return bookCount;
	}

	public void setBookCount(Integer bookCount) {
		this.bookCount = bookCount;
	}

	@Override
	public String toString() {
		return "Orders [orderNumber=" + orderNumber + ", book=" + book + ", publishHouse=" + publishHouse + ", author="
				+ author + ", user=" + user + ", deliveTime=" + deliveTime + ", deliverStatus=" + deliverStatus
				+ ", payTime=" + payTime + ", payStatus=" + payStatus + ", bookCount=" + bookCount + "]";
	}

}
