package fasttrackse.ffse1702a.fbms.logwork.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * Entity cho bảng thoi_gian_cong_viec
 */

@Entity
@Table(name="thoi_gian_cong_viec")
public class ThoiGianLamViec {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, length = 5)
	private int id;
	
	@Column(name = "ten_cong_viec", length = 150)
	private String tenCongViec;
	
	@Column(name = "mo_ta", nullable = true, length = 1000)
	private String moTa;
	
	@Column(name = "trang_thai", length = 1)
	private int trangThai;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@Column(name = "thoi_gian_bat_dau", nullable = true)
	private Date thoiGianBatDau;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@Column(name = "thoi_gian_ket_thuc", nullable = true)
	private Date thoiGianKetThuc;
	
	@Column(name = "thoi_gian_uoc_luong", nullable = true, length = 2)
	private int thoiGianUocLuong;
	
	@Column(name = "ly_do_tu_choi", nullable = true)
	private String lyDoTuChoi;
	
	/*Quan hệ nhiều - một với bảng nhan_vien thông qua cột ma_nhan_vien */
	@ManyToOne
	@JoinColumn(name = "ma_nhan_vien")
	private NhanVien nhanVien;
	
	/*Quan hệ nhiều - một với bảng du_an thông qua cột ma_du_an */
	@ManyToOne
	@JoinColumn(name = "ma_du_an")
	private DuAn duAn;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenCongViec() {
		return tenCongViec;
	}

	public void setTenCongViec(String tenCongViec) {
		this.tenCongViec = tenCongViec;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public DuAn getDuAn() {
		return duAn;
	}

	public void setDuAn(DuAn duAn) {
		this.duAn = duAn;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

	public Date getThoiGianBatDau() {
		return thoiGianBatDau;
	}

	public void setThoiGianBatDau(Date thoiGianBatDau) {
		this.thoiGianBatDau = thoiGianBatDau;
	}

	public Date getThoiGianKetThuc() {
		return thoiGianKetThuc;
	}

	public void setThoiGianKetThuc(Date thoiGianKetThuc) {
		this.thoiGianKetThuc = thoiGianKetThuc;
	}

	public int getThoiGianUocLuong() {
		return thoiGianUocLuong;
	}

	public void setThoiGianUocLuong(int thoiGianUocLuong) {
		this.thoiGianUocLuong = thoiGianUocLuong;
	}

	public String getLyDoTuChoi() {
		return lyDoTuChoi;
	}

	public void setLyDoTuChoi(String lyDoTuChoi) {
		this.lyDoTuChoi = lyDoTuChoi;
	}

  
}
