package fasttrackse1702a.fbms.quanlyduan.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * The persistent class for the ho_so_nhan_vien database table.
 * 
 */
@Entity
@Table(name = "ho_so_nhan_vien")
public class HoSoNhanVien implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_nhan_vien", unique = true)
	private int maNhanVien;

	@Column(name = "ho_dem")
	private String hoDem;
	
	@Column(name="ten")
	private String ten;
	
	@Column(name = "ma_phong_ban")
	private String maPhongBan;
	
	@Column(name = "ma_chuc_danh")
	private String maChucDanh;
	
	@ManyToMany(mappedBy="hoSoNhanVien",fetch = FetchType.EAGER,targetEntity=DuAn.class)
	private Set<DuAn> duAn;
	
	@ManyToMany(targetEntity = VaiTro.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "nhiem_vu", joinColumns = {
	@JoinColumn(name = "ma_nhan_vien", referencedColumnName = "ma_nhan_vien",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_vai_tro", referencedColumnName = "ma_vai_tro", nullable = true, updatable = false,insertable=true) })
	private Set<VaiTro> vaiTro;
	
//	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL,mappedBy="nhanVien")
//	private Set<User> user;
	public HoSoNhanVien() {
	}

	public int getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(int maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	/*public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public byte getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(byte gioiTinh) {
		this.gioiTinh = gioiTinh;
	}*/

	public String getHoDem() {
		return hoDem;
	}

	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getMaPhongBan() {
		return maPhongBan;
	}

	public void setMaPhongBan(String maPhongBan) {
		this.maPhongBan = maPhongBan;
	}

	public String getMaChucDanh() {
		return maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public Set<DuAn> getDuAn() {
		return duAn;
	}

	public void setDuAn(Set<DuAn> duAn) {
		this.duAn = duAn;
	}
	public Set<VaiTro> getVaiTro() {
		return vaiTro;
	}
	public void setVaiTro(Set<VaiTro> vaiTro) {
		this.vaiTro = vaiTro;
	}

//	public Set<User> getUser() {
//		return user;
//	}
//
//	public void setUser(Set<User> user) {
//		this.user = user;
//	}

	
	

	
	

	

}