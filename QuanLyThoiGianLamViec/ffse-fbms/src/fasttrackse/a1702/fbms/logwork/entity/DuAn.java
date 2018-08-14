package fasttrackse.a1702.fbms.logwork.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "du_an")
public class DuAn {

	@Column(name = "ma_du_an", length = 30)
	private String maDuAn;
	
	@Column(name = "ten_du_an", length = 100)
	private String tenDuAn;
	
	/*Quan hê nhiều - một với bảng tinh_trang thông qua cột ma_tinh_trang */
	@ManyToOne
	@JoinColumn(name = "ma_tinh_trang")
	private TinhTrang tinhTrang;
	
	/*Quan hê một - nhiều với bảng nhiem_vu thông qua cột ma_du_an */
	@OneToMany(mappedBy = "pk.DuAn")
	private List<NhiemVu> nhiemVus;
	
	public DuAn() {
		
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

	public TinhTrang getTinhTrang() {
		return tinhTrang;
	}

	public void setTinhTrang(TinhTrang tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	public List<NhiemVu> getNhiemVus() {
		return nhiemVus;
	}

	public void setNhiemVus(List<NhiemVu> nhiemVus) {
		this.nhiemVus = nhiemVus;
	}

}
