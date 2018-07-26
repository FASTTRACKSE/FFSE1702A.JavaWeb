package namdv.model.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * The persistent class for the lop_hoc database table.
 * 
 */
@Entity
@Table(name = "lop_hoc")
@NamedQuery(name = "LopHoc.findAll", query = "SELECT l FROM LopHoc l")
public class LopHoc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_lop", unique = true, nullable = false)
	private int maLop;

	@Column(name = "ten_lop", nullable = false, length = 32)
	private String tenLop;

	// bi-directional many-to-one association to SinhVien
	@OneToMany(mappedBy = "lopHoc")
	private List<SinhVien> sinhViens;

	public LopHoc() {
	}

	public int getMaLop() {
		return this.maLop;
	}

	public void setMaLop(int maLop) {
		this.maLop = maLop;
	}

	public String getTenLop() {
		return this.tenLop;
	}

	public void setTenLop(String tenLop) {
		this.tenLop = tenLop;
	}

	public List<SinhVien> getSinhViens() {
		return this.sinhViens;
	}

	public void setSinhViens(List<SinhVien> sinhViens) {
		this.sinhViens = sinhViens;
	}

	public SinhVien addSinhVien(SinhVien sinhVien) {
		getSinhViens().add(sinhVien);
		sinhVien.setLopHoc(this);

		return sinhVien;
	}

	public SinhVien removeSinhVien(SinhVien sinhVien) {
		getSinhViens().remove(sinhVien);
		sinhVien.setLopHoc(null);

		return sinhVien;
	}

	@Override
	public String toString() {
		return "LopHoc [maLop=" + maLop + ", tenLop=" + tenLop + "]";
	}

}