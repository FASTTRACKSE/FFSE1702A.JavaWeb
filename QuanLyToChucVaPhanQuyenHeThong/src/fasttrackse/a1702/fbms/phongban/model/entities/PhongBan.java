package fasttrackse.a1702.fbms.phongban.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "phong_ban")
public class PhongBan {
	@Id
	@Column(name = "ma_phong_ban", unique = true, nullable = false)
	private String maPhongBan;

	@Column(name = "ten_phong_ban", nullable = false, length = 100)
	@NotEmpty
	private String tenPhongBan;

	public final String getMaPhongBan() {
		return maPhongBan;
	}

	public final void setMaPhongBan(String maPhongBan) {
		this.maPhongBan = maPhongBan;
	}

	public final String getTenPhongBan() {
		return tenPhongBan;
	}

	public final void setTenPhongBan(String tenPhongBan) {
		this.tenPhongBan = tenPhongBan;
	}

	public PhongBan(String maPhongBan, @NotEmpty String tenPhongBan) {
		super();
		this.maPhongBan = maPhongBan;
		this.tenPhongBan = tenPhongBan;
	}

	public PhongBan() {
		super();
	}

	@Override
	public String toString() {
		return "PhongBan [maPhongBan=" + maPhongBan + ", tenPhongBan=" + tenPhongBan + "]";
	}

}
