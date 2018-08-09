package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;


@Entity
@Table(name="framework")
public class Framework {
	@Id
	@Column(name="ma_framework")
	@NotEmpty
	
	private String maFramework;
	@Column(name="ten_framework")
	@NotEmpty
	private String tenFramework;
	
	
	public Framework() {
		super();
	}
	public Framework(String maFramework, String tenFramework) {
		super();
		this.maFramework = maFramework;
		this.tenFramework = tenFramework;
	}
	public String getMaFramework() {
		return maFramework;
	}
	public void setMaFramework(String maFramework) {
		this.maFramework = maFramework;
	}
	public String getTenFramework() {
		return tenFramework;
	}
	public void setTenFramework(String tenFramework) {
		this.tenFramework = tenFramework;
	}
	
}
