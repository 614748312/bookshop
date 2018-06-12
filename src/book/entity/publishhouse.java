package book.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name = "publishhouse")
public class publishhouse {
	@Id
	@GeneratedValue(generator = "id")
	@GenericGenerator(name = "id", strategy = "native")
	private Integer id;
	private String publishHouseName;
	private String publishHousePerson;
	private String publishHousePhone;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPublishHouseName() {
		return publishHouseName;
	}
	public void setPublishHouseName(String publishHouseName) {
		this.publishHouseName = publishHouseName;
	}
	public String getPublishHousePerson() {
		return publishHousePerson;
	}
	public void setPublishHousePerson(String publishHousePerson) {
		this.publishHousePerson = publishHousePerson;
	}
	public String getPublishHousePhone() {
		return publishHousePhone;
	}
	public void setPublishHousePhone(String publishHousePhone) {
		this.publishHousePhone = publishHousePhone;
	}
	@Override
	public String toString() {
		return "publishhouse [id=" + id + ", publishHouseName=" + publishHouseName + ", publishHousePerson="
				+ publishHousePerson + ", publishHousePhone=" + publishHousePhone + "]";
	}
	

}
