package book.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tab_diary")
public class Diary {
	@Id
	@GeneratedValue(generator = "DiaryId")
	@GenericGenerator(name = "DiaryId", strategy = "native")
	private Integer DiaryId;// 日志id
	private Date loginInTime;// 登陆时间
	private Date loginOutTime;// 登出时间
	@Column(name = "diaryInfo", columnDefinition = "TEXT", nullable = true)
	private String diaryInfo;// 日志信息
	private Integer managerId;// 管理员id

	public Integer getDiaryId() {
		return DiaryId;
	}

	public void setDiaryId(Integer diaryId) {
		DiaryId = diaryId;
	}

	public Date getLoginInTime() {
		return loginInTime;
	}

	public void setLoginInTime(Date loginInTime) {
		this.loginInTime = loginInTime;
	}

	public Date getLoginOutTime() {
		return loginOutTime;
	}

	public void setLoginOutTime(Date loginOutTime) {
		this.loginOutTime = loginOutTime;
	}

	public String getDiaryInfo() {
		return diaryInfo;
	}

	public void setDiaryInfo(String diaryInfo) {
		this.diaryInfo = diaryInfo;
	}

	public Integer getManagerId() {
		return managerId;
	}

	public void setManagerId(Integer managerId) {
		this.managerId = managerId;
	}

	@Override
	public String toString() {
		return "Diary [DiaryId=" + DiaryId + ", loginInTime=" + loginInTime + ", loginOutTime=" + loginOutTime
				+ ", diaryInfo=" + diaryInfo + ", managerId=" + managerId + "]";
	}

}
