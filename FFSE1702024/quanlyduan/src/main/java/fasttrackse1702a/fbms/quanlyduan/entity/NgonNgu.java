package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="ngon_ngu")
public class NgonNgu {
	
	@Id
	@Column(name="ma_ngon_ngu")
	@NotEmpty
	private String maNgonNgu;
	@NotEmpty
	@Column(name="ten_ngon_ngu")
	private String tenNgonNgu;
	public NgonNgu() {
		super();
	}
	
	public NgonNgu(String maNgonNgu, String tenNgonNgu) {
		super();
		this.maNgonNgu = maNgonNgu;
		this.tenNgonNgu = tenNgonNgu;
	}

	public String getMaNgonNgu() {
		return maNgonNgu;
	}
	public void setMaNgonNgu(String maNgonNgu) {
		this.maNgonNgu = maNgonNgu;
	}
	public String getTenNgonNgu() {
		return tenNgonNgu;
	}
	public void setTenNgonNgu(String tenNgonNgu) {
		this.tenNgonNgu = tenNgonNgu;
	}

}
