package fasttrackse.ffse1702a.fbms.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="phong_ban")
public class PhongBan {
	@Id
	@Column(name="ma_phong_ban")
	@NotEmpty
	private String maPhongBan;
	
	@Column(name="ten_phong_ban")
	@NotEmpty
	private String tenPhongBan;
	
	public PhongBan() {
		super();
	}

	public PhongBan(@NotEmpty String maPhongBan, @NotEmpty String tenPhongBan) {
		super();
		this.maPhongBan = maPhongBan;
		this.tenPhongBan = tenPhongBan;
	}

	public String getMaPhongBan() {
		return maPhongBan;
	}

	public void setMaPhongBan(String maPhongBan) {
		this.maPhongBan = maPhongBan;
	}

	public String getTenPhongBan() {
		return tenPhongBan;
	}

	public void setTenPhongBan(String tenPhongBan) {
		this.tenPhongBan = tenPhongBan;
	}
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "phongBan",cascade=CascadeType.ALL)
	private Set<HoSo> hoSo = new HashSet<HoSo>(0);
}
