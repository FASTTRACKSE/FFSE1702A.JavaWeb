package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="frameword")
public class Frameword {
	@Id
	@Column(name="ma_frameword")
	@NotEmpty
	private String maFrameword;
	@Column(name="ten_frameword")
	@NotEmpty
	private String tenFrameword;
	public String getMaFrameword() {
		return maFrameword;
	}
	public void setMaFrameword(String maFrameword) {
		this.maFrameword = maFrameword;
	}
	public String getTenFrameword() {
		return tenFrameword;
	}
	public void setTenFrameword(String tenFrameword) {
		this.tenFrameword = tenFrameword;
	}
}
