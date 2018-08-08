package fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * The persistent class for the chuc_danh database table.
 * 
 */
@Entity
@Table(name = "chuc_danh")
public class ChucDanh implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_chuc_danh", unique = true, nullable = false, length = 30)
	private String maChucDanh;

	@Column(name = "ten_chuc_danh", nullable = false, length = 255)
	private String tenChucDanh;

	// bi-directional many-to-one association to HoSoNhanVien
	@OneToMany(mappedBy = "chucDanh")
	private List<HoSoNhanVien> hoSoNhanViens;

	public ChucDanh() {
	}

	public String getMaChucDanh() {
		return this.maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getTenChucDanh() {
		return this.tenChucDanh;
	}

	public void setTenChucDanh(String tenChucDanh) {
		this.tenChucDanh = tenChucDanh;
	}

	public List<HoSoNhanVien> getHoSoNhanViens() {
		return this.hoSoNhanViens;
	}

	public void setHoSoNhanViens(List<HoSoNhanVien> hoSoNhanViens) {
		this.hoSoNhanViens = hoSoNhanViens;
	}

	public HoSoNhanVien addHoSoNhanVien(HoSoNhanVien hoSoNhanVien) {
		getHoSoNhanViens().add(hoSoNhanVien);
		hoSoNhanVien.setChucDanh(this);

		return hoSoNhanVien;
	}

	public HoSoNhanVien removeHoSoNhanVien(HoSoNhanVien hoSoNhanVien) {
		getHoSoNhanViens().remove(hoSoNhanVien);
		hoSoNhanVien.setChucDanh(null);

		return hoSoNhanVien;
	}

}