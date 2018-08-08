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
 * The persistent class for the quoc_tich database table.
 * 
 */
@Entity
@Table(name = "quoc_tich")
public class QuocTich implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_quoc_tich", unique = true, nullable = false, length = 50)
	private String maQuocTich;

	@Column(name = "ten_quoc_tich", nullable = false, length = 50)
	private String tenQuocTich;

	// bi-directional many-to-one association to HoSoNhanVien
	@OneToMany(mappedBy = "quocTich")
	private List<HoSoNhanVien> hoSoNhanViens;

	public QuocTich() {
	}

	public String getMaQuocTich() {
		return this.maQuocTich;
	}

	public void setMaQuocTich(String maQuocTich) {
		this.maQuocTich = maQuocTich;
	}

	public String getTenQuocTich() {
		return this.tenQuocTich;
	}

	public void setTenQuocTich(String tenQuocTich) {
		this.tenQuocTich = tenQuocTich;
	}

	public List<HoSoNhanVien> getHoSoNhanViens() {
		return this.hoSoNhanViens;
	}

	public void setHoSoNhanViens(List<HoSoNhanVien> hoSoNhanViens) {
		this.hoSoNhanViens = hoSoNhanViens;
	}

	public HoSoNhanVien addHoSoNhanVien(HoSoNhanVien hoSoNhanVien) {
		getHoSoNhanViens().add(hoSoNhanVien);
		hoSoNhanVien.setQuocTich(this);

		return hoSoNhanVien;
	}

	public HoSoNhanVien removeHoSoNhanVien(HoSoNhanVien hoSoNhanVien) {
		getHoSoNhanViens().remove(hoSoNhanVien);
		hoSoNhanVien.setQuocTich(null);

		return hoSoNhanVien;
	}

}