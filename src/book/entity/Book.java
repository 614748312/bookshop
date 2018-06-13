package book.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_book")
public class Book {
	@Id
	@GeneratedValue(generator = "bookISBN")
	@GenericGenerator(name = "bookISBN", strategy = "native")
	private Integer bookISBN;// 图书编号
	private String bookName;// 图书名
	private String bookImage;// 图书图片
	private Double bookUnitPrice;// 图书单价
	private Date addTime;// 图书上架时间
	private String bookOneType;// 图书一级类别
	private String bookTwoType;// 图书二级类别
	@Column(name = "bookIntroduction", columnDefinition = "TEXT", nullable = true)
	private String bookIntroduction;// 图书简介
	@ManyToOne
	@JoinColumn(name = "authorId")
	private Author author;// 作者实体类
	@ManyToOne
	@JoinColumn(name = "publishHouseId")
	private PublishHouse publishHouse;// 出版社实体类

	public Integer getBookISBN() {
		return bookISBN;
	}

	public void setBookISBN(int bookISBN) {
		this.bookISBN = bookISBN;
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

	public Double getBookUnitPrice() {
		return bookUnitPrice;
	}

	public void setBookUnitPrice(Double bookUnitPrice) {
		this.bookUnitPrice = bookUnitPrice;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getBookOneType() {
		return bookOneType;
	}

	public void setBookOneType(String bookOneType) {
		this.bookOneType = bookOneType;
	}

	public String getBookTwoType() {
		return bookTwoType;
	}

	public void setBookTwoType(String bookTwoType) {
		this.bookTwoType = bookTwoType;
	}

	public String getBookIntroduction() {
		return bookIntroduction;
	}

	public void setBookIntroduction(String bookIntroduction) {
		this.bookIntroduction = bookIntroduction;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}


	public PublishHouse getPublishHouse() {
		return publishHouse;
	}

	public void setPublishHouse(PublishHouse publishHouse) {
		this.publishHouse = publishHouse;
	}

	public void setBookISBN(Integer bookISBN) {
		this.bookISBN = bookISBN;
	}

	@Override
	public String toString() {
		return "Book [bookISBN=" + bookISBN + ", bookName=" + bookName + ", bookImage=" + bookImage + ", bookUnitPrice="
				+ bookUnitPrice + ", addTime=" + addTime + ", bookOneType=" + bookOneType + ", bookTwoType="
				+ bookTwoType + ", bookIntroduction=" + bookIntroduction + ", author=" + author + ", publishHouseId="
				+ publishHouse + "]";
	}

}
