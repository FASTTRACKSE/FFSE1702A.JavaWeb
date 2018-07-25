package namdv.model.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the sinh_vien database table.
 * 
 */
@Entity
@Table(name = "sinh_vien")
@NamedQuery(name = "SinhVien.findAll", query = "SELECT s FROM SinhVien s")
public class SinhVien implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_sinh_vien", unique = true, nullable = false)
	private int maSinhVien;

	@Column(name = "dien_thoai", nullable = false)
	private int dienThoai;

	@Column(nullable = false, length = 64)
	private String email;

	@Column(name = "gioi_tinh", nullable = false, length = 8)
	private String gioiTinh;

	@Column(name = "ho_dem", nullable = false, length = 64)
	private String hoDem;

	@Column(name = "nam_sinh", nullable = false)
	private int namSinh;

	@Column(nullable = false, length = 32)
	private String ten;

	@Column(name = "dia_chi", nullable = false, length = 64)
	private String diaChi;

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	// bi-directional many-to-one association to LopHoc
	@ManyToOne
	@JoinColumn(name = "ma_lop", nullable = false)
	private LopHoc lopHoc;

	public SinhVien() {
	}

	public int getMaSinhVien() {
		return this.maSinhVien;
	}

	public void setMaSinhVien(int maSinhVien) {
		this.maSinhVien = maSinhVien;
	}

	public int getDienThoai() {
		return this.dienThoai;
	}

	public void setDienThoai(int dienThoai) {
		this.dienThoai = dienThoai;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGioiTinh() {
		return this.gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getHoDem() {
		return this.hoDem;
	}

	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}

	public int getNamSinh() {
		return this.namSinh;
	}

	public void setNamSinh(int namSinh) {
		this.namSinh = namSinh;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public LopHoc getLopHoc() {
		return this.lopHoc;
	}

	public void setLopHoc(LopHoc lopHoc) {
		this.lopHoc = lopHoc;
	}

	@Override
	public String toString() {
		return "SinhVien [maSinhVien=" + maSinhVien + ", dienThoai=" + dienThoai + ", email=" + email + ", gioiTinh="
				+ gioiTinh + ", hoDem=" + hoDem + ", namSinh=" + namSinh + ", ten=" + ten + ", diaChi=" + diaChi
				+ ", lopHoc=" + lopHoc + "]";
	}

}