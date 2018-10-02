package fasttrackse.ffse1702a.fhrm.entity.tlpl;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="phong_ban")
public class PB {
	@Id
	@Column(name="ma_phong_ban")
	private String maPhongBan;
	
	@Column(name="ten_phong_ban")
	private String tenPhongBan;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "phongBan",cascade=CascadeType.ALL)
	private Set<HoSo> hoso = new HashSet<HoSo>(0);
	public Set<HoSo> getHoso() {
		return hoso;
	}

	public void setHoso(Set<HoSo> hoso) {
		this.hoso = hoso;
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
	
}
