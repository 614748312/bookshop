package book.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_items")
public class Items {
	@Id
	@GeneratedValue(generator = "itemsId")
	@GenericGenerator(name = "itemsId", strategy = "native")
	private Integer itemsId;// 购物车中商品项id
	@ManyToOne
	@JoinColumn(name = "bookISBN")
	private Book book;
	@ManyToOne
	@JoinColumn(name = "orderNumber")
	private Orders orders;// 订单表实体类
	private boolean payStatus;// 商品项状态，默认false（未支付）,ture(已支付)
	private Integer bookCount;// 此商品项图书数量

	public Integer getItemsId() {
		return itemsId;
	}

	public void setItemsId(Integer itemsId) {
		this.itemsId = itemsId;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
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

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@Override
	public String toString() {
		return "Items [itemsId=" + itemsId + ", book=" + book + ", orders=" + orders + ", payStatus=" + payStatus
				+ ", bookCount=" + bookCount + "]";
	}


}