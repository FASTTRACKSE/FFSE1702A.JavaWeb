package fasttrackse.a1702.fbms.logwork.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
*Entity cho bảng nhan_vien
*/

@Entity
@Table(name = "nhan_vien")
public class NhanVien {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_nhan_vien", unique = true, nullable = false, length = 5)
	private int maNhanVien;
	
	/*Quan hê nhiều - một với bảng chuc_danh thông qua cột ma_chuc_danh*/
	@ManyToOne
	@JoinColumn(name = "ma_chuc_danh")
	private ChucDanh chucDanh;
		
	@Column(name = "ten", nullable = false, length = 20)
	private String ten;
	
	@Column(name = "ho_dem", nullable = false, length = 50)
	private String hoDem;
	
	/*Quan hê một - nhiều với bảng thoi_gian_lam_viec thông qua cột ma_nhan_vien*/
	@OneToMany(mappedBy = "nhanVien")
	private List<ThoiGianLamViec> thoiGianLamViecs;
	
	/*Quan hê một - nhiều với bảng nhiem_vu thông qua cột ma_nhan_vien */
	@OneToMany(mappedBy = "pk.NhanVien")
	private List<NhiemVu> nhiemVus;
	
	public NhanVien() {

	}
	
	public int getMaNhanVien() {
		return maNhanVien;
	}
	public void setMaNhanVien(int maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public ChucDanh getChucDanh() {
		return chucDanh;
	}
	public void setChucDanh(ChucDanh chucDanh) {
		this.chucDanh = chucDanh;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getHoDem() {
		return hoDem;
	}
	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}
	public List<ThoiGianLamViec> getThoiGianLamViecs() {
		return thoiGianLamViecs;
	}
	public void setThoiGianLamViecs(List<ThoiGianLamViec> thoiGianLamViecs) {
		this.thoiGianLamViecs = thoiGianLamViecs;
	}

}
