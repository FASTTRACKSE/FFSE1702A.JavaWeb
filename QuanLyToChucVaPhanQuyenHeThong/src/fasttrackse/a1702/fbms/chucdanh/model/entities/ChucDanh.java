package fasttrackse.a1702.fbms.chucdanh.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "chuc_danh")

public class ChucDanh {
	@Id
	@Column(name = "ma_chuc_danh", unique = true, nullable = false)
	private String maChucDanh;

	@Column(name = "ten_chuc_danh", nullable = false, length = 100)
	@NotEmpty
	private String tenChucDanh;

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

	public ChucDanh() {
		super();
	}

	public ChucDanh(String maChucDanh, @NotEmpty String tenChucDanh) {
		super();
		this.maChucDanh = maChucDanh;
		this.tenChucDanh = tenChucDanh;
	}

	@Override
	public String toString() {
		return "ChucDanh [maChucDanh=" + maChucDanh + ", tenChucDanh=" + tenChucDanh + "]";
	}

}
