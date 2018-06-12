package book.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "book")
public class book {
	@Id
	@GeneratedValue(generator = "id")
	@GenericGenerator(name = "id", strategy = "native")
	private Integer id;
	private String bookName;
	private String bookImage;
	private String author;
	private String publishingHouse;
	private Date publishingTime;
	private Integer bookUnitPrice;
	private String bookISBN;
	private String bookType;
	private String bookIntroduction;
	private String authorImage;
	private String authorPrice;
	

	public String getAuthorImage() {
		return authorImage;
	}

	public void setAuthorImage(String authorImage) {
		this.authorImage = authorImage;
	}

	public String getAuthorPrice() {
		return authorPrice;
	}

	public void setAuthorPrice(String authorPrice) {
		this.authorPrice = authorPrice;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookImage() {
		return bookImage;
	}

	public void setBookImage(String bookImage) {
		this.bookImage = bookImage;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublishingHouse() {
		return publishingHouse;
	}

	public void setPublishingHouse(String publishingHouse) {
		this.publishingHouse = publishingHouse;
	}

	public Date getPublishingTime() {
		return publishingTime;
	}

	public void setPublishingTime(Date publishingTime) {
		this.publishingTime = publishingTime;
	}

	public Integer getBookUnitPrice() {
		return bookUnitPrice;
	}

	public void setBookUnitPrice(Integer bookUnitPrice) {
		this.bookUnitPrice = bookUnitPrice;
	}

	public String getBookISBN() {
		return bookISBN;
	}

	public void setBookISBN(String bookISBN) {
		this.bookISBN = bookISBN;
	}

	public String getBookType() {
		return bookType;
	}

	public void setBookType(String bookType) {
		this.bookType = bookType;
	}

	public String getBookIntroduction() {
		return bookIntroduction;
	}

	public void setBookIntroduction(String bookIntroduction) {
		this.bookIntroduction = bookIntroduction;
	}

	@Override
	public String toString() {
		return "book [id=" + id + ", bookName=" + bookName + ", bookImage=" + bookImage + ", author=" + author
				+ ", publishingHouse=" + publishingHouse + ", publishingTime=" + publishingTime + ", bookUnitPrice="
				+ bookUnitPrice + ", bookISBN=" + bookISBN + ", bookType=" + bookType + ", bookIntroduction="
				+ bookIntroduction + ", authorImage=" + authorImage + ", authorPrice=" + authorPrice + "]";
	}

	
	

}
