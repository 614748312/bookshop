package book.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_author")
public class Author {
	@Id
	@GeneratedValue(generator = "authorId")
	@GenericGenerator(name = "authorId", strategy = "native")
	private Integer authorId;// 作者编号
	private String authorName;// 作者姓名
	private String authorImage;// 作者头像
	@Column(name = "authorInfo", columnDefinition = "TEXT", nullable = true)
	private String authorInfo;// 作者简介

	public Integer getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getAuthorImage() {
		return authorImage;
	}

	public void setAuthorImage(String authorImage) {
		this.authorImage = authorImage;
	}

	public String getAuthorInfo() {
		return authorInfo;
	}

	public void setAuthorInfo(String authorInfo) {
		this.authorInfo = authorInfo;
	}

	@Override
	public String toString() {
		return "author [authorId=" + authorId + ", authorName=" + authorName + ", authorImage=" + authorImage
				+ ", authorInfo=" + authorInfo + "]";
	}

}
