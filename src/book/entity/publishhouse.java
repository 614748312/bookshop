package book.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_publishhouse")
public class PublishHouse {
	@Id
	@GeneratedValue(generator = "publishHouseId")
	@GenericGenerator(name = "publishHouseId", strategy = "native")
	private Integer publishHouseId;// 出版社id
	private String publishHouseName;// 出版社名
	private String publishHousePerson;// 出版社联系人
	private Integer publishHousePhone;// 出版社联系电话

	public Integer getPublishHouseId() {
		return publishHouseId;
	}

	public void setPublishHouseId(int publishHouseId) {
		this.publishHouseId = publishHouseId;
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

	public Integer getPublishHousePhone() {
		return publishHousePhone;
	}

	public void setPublishHousePhone(int publishHousePhone) {
		this.publishHousePhone = publishHousePhone;
	}

	@Override
	public String toString() {
		return "PublishHouse [publishHouseId=" + publishHouseId + ", publishHouseName=" + publishHouseName
				+ ", publishHousePerson=" + publishHousePerson + ", publishHousePhone=" + publishHousePhone + "]";
	}

}
