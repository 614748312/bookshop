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
	@GeneratedValue(generator = "diaryId")
	@GenericGenerator(name = "diaryId", strategy = "native")
	private Integer diaryId;// 日志id
	private Date loginInTime;// 登陆时间
	private Date loginOutTime;// 登出时间
	@Column(name = "diaryInfo", columnDefinition = "TEXT", nullable = true)
	private String diaryInfo;// 日志信息

	public Integer getDiaryId() {
		return diaryId;
	}

	public void setDiaryId(Integer diaryId) {
		this.diaryId = diaryId;
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

	@Override
	public String toString() {
		return "Diary [diaryId=" + diaryId + ", loginInTime=" + loginInTime + ", loginOutTime=" + loginOutTime
				+ ", diaryInfo=" + diaryInfo + "]";
	}

}
