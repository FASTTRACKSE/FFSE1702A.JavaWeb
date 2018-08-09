package fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity;

import java.io.Serializable;
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

/**
 * The persistent class for the hop_dong database table.
 * 
 */
@Entity
@Table(name = "hop_dong")
public class HopDong implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_hop_dong", unique = true, nullable = false, length = 30)
	private String maHopDong;

	@Column(name = "luong_thang_13", nullable = false)
	private int luongThang13;

	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_ket_thuc", nullable = false)
	private Date ngayKetThuc;

	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_ky_ket", nullable = false)
	private Date ngayKyKet;

	@Column(name = "so_ngay_phep", nullable = false)
	private int soNgayPhep;

	@Column(name = "trang_thai", nullable = false)
	private int trangThai;

	// bi-directional many-to-one association to HoSoNhanVien
	@ManyToOne
	@JoinColumn(name = "ma_nhan_vien", nullable = false)
	private HoSoNhanVien hoSoNhanVien;

	// bi-directional many-to-one association to LoaiHopDong
	@ManyToOne
	@JoinColumn(name = "ma_loai_hop_dong", nullable = false)
	private LoaiHopDong loaiHopDong;

	public HopDong() {
	}

	public String getMaHopDong() {
		return this.maHopDong;
	}

	public void setMaHopDong(String maHopDong) {
		this.maHopDong = maHopDong;
	}

	public int getLuongThang13() {
		return this.luongThang13;
	}

	public void setLuongThang13(int luongThang13) {
		this.luongThang13 = luongThang13;
	}

	public Date getNgayKetThuc() {
		return this.ngayKetThuc;
	}

	public void setNgayKetThuc(Date ngayKetThuc) {
		this.ngayKetThuc = ngayKetThuc;
	}

	public Date getNgayKyKet() {
		return this.ngayKyKet;
	}

	public void setNgayKyKet(Date ngayKyKet) {
		this.ngayKyKet = ngayKyKet;
	}

	public int getSoNgayPhep() {
		return this.soNgayPhep;
	}

	public void setSoNgayPhep(int soNgayPhep) {
		this.soNgayPhep = soNgayPhep;
	}

	public int getTrangThai() {
		return this.trangThai;
	}

	public void setTrangThai(byte trangThai) {
		this.trangThai = trangThai;
	}

	public HoSoNhanVien getHoSoNhanVien() {
		return this.hoSoNhanVien;
	}

	public void setHoSoNhanVien(HoSoNhanVien hoSoNhanVien) {
		this.hoSoNhanVien = hoSoNhanVien;
	}

	public LoaiHopDong getLoaiHopDong() {
		return this.loaiHopDong;
	}

	public void setLoaiHopDong(LoaiHopDong loaiHopDong) {
		this.loaiHopDong = loaiHopDong;
	}

}