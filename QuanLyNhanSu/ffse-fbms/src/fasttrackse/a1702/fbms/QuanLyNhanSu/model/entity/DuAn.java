package fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * The persistent class for the du_an database table.
 * 
 */
@Entity
@Table(name = "du_an")
public class DuAn implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ma_du_an", unique = true, nullable = false, length = 30)
	private String maDuAn;

	// bi-directional many-to-many association to HoSoNhanVien
	@ManyToMany
	@JoinTable(name = "kinh_nghiem_du_an", joinColumns = {
			@JoinColumn(name = "ma_du_an", nullable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "ma_nhan_vien", nullable = false) })
	private List<HoSoNhanVien> hoSoNhanViens;

	public DuAn() {
	}

	public String getMaDuAn() {
		return this.maDuAn;
	}

	public void setMaDuAn(String maDuAn) {
		this.maDuAn = maDuAn;
	}

	public List<HoSoNhanVien> getHoSoNhanViens() {
		return this.hoSoNhanViens;
	}

	public void setHoSoNhanViens(List<HoSoNhanVien> hoSoNhanViens) {
		this.hoSoNhanViens = hoSoNhanViens;
	}

}