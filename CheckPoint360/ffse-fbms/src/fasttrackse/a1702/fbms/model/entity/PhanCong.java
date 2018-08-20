package fasttrackse.a1702.fbms.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "phan_cong_danh_gia")
public class PhanCong {
	private int id;
	@Id
	@Column(name = "ma_nhan_vien_danh_gia_1")
	private String nhanVienDanhGia1;
	@Column(name = "ma_nhan_vien_danh_gia_2")
	private String nhanVienDanhGia2;
	@Column(name = "ma_nhan_vien_danh_gia_3")
	private String nhanVienDanhGia3;
	@Column(name = "ma_nhan_vien_duoc_danh_gia")
	private String nhanVienDuocDanhGia;
	@Column(name = "phong_ban")
	private String phongBan;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNhanVienDanhGia1() {
		return nhanVienDanhGia1;
	}
	public void setNhanVienDanhGia1(String nhanVienDanhGia1) {
		this.nhanVienDanhGia1 = nhanVienDanhGia1;
	}
	public String getNhanVienDanhGia2() {
		return nhanVienDanhGia2;
	}
	public void setNhanVienDanhGia2(String nhanVienDanhGia2) {
		this.nhanVienDanhGia2 = nhanVienDanhGia2;
	}
	public String getNhanVienDanhGia3() {
		return nhanVienDanhGia3;
	}
	public void setNhanVienDanhGia3(String nhanVienDanhGia3) {
		this.nhanVienDanhGia3 = nhanVienDanhGia3;
	}
	public String getNhanVienDuocDanhGia() {
		return nhanVienDuocDanhGia;
	}
	public void setNhanVienDuocDanhGia(String nhanVienDuocDanhGia) {
		this.nhanVienDuocDanhGia = nhanVienDuocDanhGia;
	}
	public String getPhongBan() {
		return phongBan;
	}
	public void setPhongBan(String phongBan) {
		this.phongBan = phongBan;
	}

}
