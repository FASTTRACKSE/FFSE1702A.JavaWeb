package fasttrackse1702a.fbms.quanlyduan.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
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
	
	@ManyToMany(fetch = FetchType.EAGER,mappedBy="framework",targetEntity=DuAn.class)
	private Set<DuAn> duAn;
	
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
	public Set<DuAn> getDuAn() {
		return duAn;
	}
	public void setDuAn(Set<DuAn> duAn) {
		this.duAn = duAn;
	}
}
