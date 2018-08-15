package fasttrackse.ffse1702a.fbms.QuanLyDuAn.model.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;

@Entity
@Table(name = "du_an")
public class DuAn implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "ma_du_an")
	private String maDuAn;
	@Column(name = "ten_du_an")
	private String tenDuAn;
	@Column(name = "nghiep_vu")
	private String nghiepVu;
	@Column(name = "mo_ta_du_an")
	private String moTaDuAn;
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
	@JoinColumn(name = "ma_tinh_trang", referencedColumnName = "ma_tinh_trang", insertable = true, updatable = true)
	private TinhTrang tinhTrang;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL, optional = true)
	@JoinColumn(name = "ma_khach_hang", referencedColumnName = "ma_khach_hang", insertable = true, updatable = true)
	private KhachHang khachHang;

	@ManyToMany(targetEntity = NgonNgu.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "ngon_ngu_du_an", joinColumns = {
			@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an", updatable = true, insertable = true) }, inverseJoinColumns = {
					@JoinColumn(name = "ma_ngon_ngu", referencedColumnName = "ma_ngon_ngu", nullable = true, updatable = false, insertable = true) })
	private Set<NgonNgu> ngonNgu;

	@ManyToMany(targetEntity = Framework.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "framework_du_an", joinColumns = {
			@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an", updatable = true, insertable = true) }, inverseJoinColumns = {
					@JoinColumn(name = "ma_framework", referencedColumnName = "ma_framework", nullable = true, updatable = false, insertable = true) })
	private Set<Framework> framework;

	@ManyToMany(targetEntity = Database.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "database_du_an", joinColumns = {
			@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an", updatable = true, insertable = true) }, inverseJoinColumns = {
					@JoinColumn(name = "ma_database", referencedColumnName = "ma_database", nullable = true, updatable = false, insertable = true) })
	private Set<Database> database;

	@ManyToMany(targetEntity = HoSoNhanVien.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "nhiem_vu", joinColumns = {
			@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an", updatable = true, insertable = true) }, inverseJoinColumns = {
					@JoinColumn(name = "ma_nhan_vien", referencedColumnName = "ma_nhan_vien", nullable = true, updatable = false, insertable = true) })
	private Set<HoSoNhanVien> hoSoNhanVien;

	public String getMaDuAn() {
		return maDuAn;
	}

	public void setMaDuAn(String maDuAn) {
		this.maDuAn = maDuAn;
	}

	public String getTenDuAn() {
		return tenDuAn;
	}

	public void setTenDuAn(String tenDuAn) {
		this.tenDuAn = tenDuAn;
	}

	public String getNghiepVu() {
		return nghiepVu;
	}

	public void setNghiepVu(String nghiepVu) {
		this.nghiepVu = nghiepVu;
	}

	public String getMoTaDuAn() {
		return moTaDuAn;
	}

	public void setMoTaDuAn(String moTaDuAn) {
		this.moTaDuAn = moTaDuAn;
	}

	public TinhTrang getTinhTrang() {
		return tinhTrang;
	}

	public void setTinhTrang(TinhTrang tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public Set<NgonNgu> getNgonNgu() {
		return ngonNgu;
	}

	public void setNgonNgu(Set<NgonNgu> ngonNgu) {
		this.ngonNgu = ngonNgu;
	}

	public Set<Framework> getFramework() {
		return framework;
	}

	public void setFramework(Set<Framework> framework) {
		this.framework = framework;
	}

	public Set<Database> getDatabase() {
		return database;
	}

	public void setDatabase(Set<Database> database) {
		this.database = database;
	}

	public Set<HoSoNhanVien> getHoSoNhanVien() {
		return hoSoNhanVien;
	}

	public void setHoSoNhanVien(Set<HoSoNhanVien> hoSoNhanViens) {
		this.hoSoNhanVien = hoSoNhanViens;
	}

}
