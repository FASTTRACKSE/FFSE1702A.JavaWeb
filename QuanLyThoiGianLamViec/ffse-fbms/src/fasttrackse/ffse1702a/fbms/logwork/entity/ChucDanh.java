package fasttrackse.ffse1702a.fbms.logwork.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "chuc_danh")
public class ChucDanh {
	
	@Id
	@Column(name = "ma_chuc_danh", unique = true, length = 30)
	private String maChucDanh;

	@Column(name = "ten_chuc_danh", length = 255)
	private String tenChucDanh;
	
	/*Quan hê một - nhiều với bảng nhan_vien thông qua cột ma_chuc_danh */
	@OneToMany(mappedBy = "chucDanh")
	private List<NhanVien> nhanViens;

	public String getMaChucDanh() {
		return maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getTenChucDanh() {
		return tenChucDanh;
	}

	public void setTenChucDanh(String tenChucDanh) {
		this.tenChucDanh = tenChucDanh;
	}

	public List<NhanVien> getNhanViens() {
		return nhanViens;
	}

	public void setNhanViens(List<NhanVien> nhanViens) {
		this.nhanViens = nhanViens;
	}
	

}
