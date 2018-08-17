package fasttrackse.a1702.fbms.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="chuc_danh")
public class ChucDanh {
	
	@Id
	@Column(name="ma_chuc_danh")
	private String maChucDanh;
	
	@Column(name="ten_chuc_danh")
	private String tenChucDanh;
	
	public ChucDanh() {
		
	}

	public String getMaChucDanh() {
		return maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getTenChucDanh() {
		return tenChucDanh;
	}

	public void setTenChucDanh(String tenChucDanh) {
		this.tenChucDanh = tenChucDanh;
	}
	
	
}
