package fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * The persistent class for the phong_ban database table.
 * 
 */
@Entity
@Table(name = "phong_ban")
public class PhongBan implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
<<<<<<< HEAD
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
=======
>>>>>>> 00b84380abc48565c1f8f2324dc9652990ac6801
	@Column(name = "ma_phong_ban", unique = true, nullable = false, length = 30)
	private String maPhongBan;

	@Column(name = "ten_phong_ban", nullable = false, length = 255)
	private String tenPhongBan;

	// bi-directional many-to-one association to HoSoNhanVien
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "phongBan")
	private List<HoSoNhanVien> hoSoNhanViens;

	public PhongBan() {
	}

	public String getMaPhongBan() {
		return this.maPhongBan;
	}

	public void setMaPhongBan(String maPhongBan) {
		this.maPhongBan = maPhongBan;
	}

	public String getTenPhongBan() {
		return this.tenPhongBan;
	}

	public void setTenPhongBan(String tenPhongBan) {
		this.tenPhongBan = tenPhongBan;
	}

	public List<HoSoNhanVien> getHoSoNhanViens() {
		return this.hoSoNhanViens;
	}

	public void setHoSoNhanViens(List<HoSoNhanVien> hoSoNhanViens) {
		this.hoSoNhanViens = hoSoNhanViens;
	}

}