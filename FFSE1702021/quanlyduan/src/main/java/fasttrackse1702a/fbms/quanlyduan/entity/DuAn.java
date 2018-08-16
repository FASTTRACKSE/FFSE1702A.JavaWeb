package fasttrackse1702a.fbms.quanlyduan.entity;

import java.io.Serializable;
import java.util.List;

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


import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;


@Entity
@Table(name="du_an")
public class DuAn implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="ma_du_an")
	private String maDuAn;
	@Column(name="ten_du_an")
	private String tenDuAn;
	@Column(name="nghiep_vu")
	private String nghiepVu;
	@Column(name="mo_ta_du_an")
	private String moTaDuAn;
	
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.ALL)
	@JoinColumn(name="ma_tinh_trang",referencedColumnName="ma_tinh_trang", insertable=true, updatable=true)
	private TinhTrang tinhTrang;
	
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.ALL)
	@JoinColumn(name="ma_khach_hang",referencedColumnName="ma_khach_hang", insertable=true, updatable=true)
	private KhachHang khachHang ;
	
	@ManyToMany(targetEntity = NgonNgu.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SELECT)
	@JoinTable(name = "ngon_ngu_du_an", joinColumns = {
	@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_ngon_ngu", referencedColumnName = "ma_ngon_ngu", nullable = true, updatable = false,insertable=true) })
	private List<NgonNgu> ngonNgu;
	

	@ManyToMany(targetEntity = Framework.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SELECT)
	@JoinTable(name = "framework_du_an", joinColumns = {
	@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_framework", referencedColumnName = "ma_framework", nullable = true, updatable = false,insertable=true) })
	private List<Framework> framework;
	
	@ManyToMany(targetEntity = Database.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SELECT)
	@JoinTable(name = "database_du_an", joinColumns = {
	@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_database", referencedColumnName = "ma_database", nullable = true, updatable = false,insertable=true) })
	private List<Database> database;
	
	@ManyToMany(targetEntity = HoSoNhanVien.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SELECT)
	@JoinTable(name = "nhiem_vu", joinColumns = {
	@JoinColumn(name = "ma_du_an", referencedColumnName = "ma_du_an",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_nhan_vien", referencedColumnName = "ma_nhan_vien", nullable = true, updatable = false,insertable=true) })
	private List<HoSoNhanVien> hoSoNhanVien;
	
	public List<HoSoNhanVien> getHoSoNhanVien() {
		return hoSoNhanVien;
	}
	public void setHoSoNhanVien(List<HoSoNhanVien> hoSoNhanVien) {
		this.hoSoNhanVien = hoSoNhanVien;
	}
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
	public List<NgonNgu> getNgonNgu() {
		return ngonNgu;
	}
	public void setNgonNgu(List<NgonNgu> ngonNgu) {
		this.ngonNgu = ngonNgu;
	}

	public List<Framework> getFramework() {
		return framework;
	}
	public void setFramework(List<Framework> framework) {
		this.framework = framework;
	}
	public List<Database> getDatabase() {
		return database;
	}
	public void setDatabase(List<Database> database) {
		this.database = database;
	}
	
	

	
}
