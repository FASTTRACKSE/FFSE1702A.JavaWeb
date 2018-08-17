package fasttrackse.a1702.fbms.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class PhongBan {
	
	@Id
	@Column(name="ma_phong_ban")
	private String phongBan;
	
	@Column(name="ten_phong_ban")
	private String tenPhongBan;
	
	public PhongBan() {
		
	}

	public String getMaPhongBan() {
		return phongBan;
	}

	public void setMaPhongBan(String maPhongBan) {
		this.phongBan = maPhongBan;
	}

	public String getTenPhongBan() {
		return tenPhongBan;
	}

	public void setTenPhongBan(String tenPhongBan) {
		this.tenPhongBan = tenPhongBan;
	}
	
	
}
