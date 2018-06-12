package book.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "manager")
public class Manager {
	@Id
	@GeneratedValue(generator = "managerName")
	@GenericGenerator(name = "managerName", strategy = "native")
	private Integer managerName;
	private String managerPassword;

	public Integer getManagerName() {
		return managerName;
	}

	public void setManagerName(Integer managerName) {
		this.managerName = managerName;
	}

	public String getManagerPassword() {
		return managerPassword;
	}

	public void setManagerPassword(String managerPassword) {
		this.managerPassword = managerPassword;
	}

	@Override
	public String toString() {
		return "Manager [managerName=" + managerName + ", managerPassword=" + managerPassword + "]";
	}

}
