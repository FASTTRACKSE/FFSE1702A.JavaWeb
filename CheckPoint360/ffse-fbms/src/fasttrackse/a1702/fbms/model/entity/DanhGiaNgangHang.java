package fasttrackse.a1702.fbms.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "danh_gia_ngang_hang")
public class DanhGiaNgangHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "phong_ban")
	private String phongBan;
	@Column(name = "nguoi_danh_gia")
	private String nguoiDanhGia;
	@Column(name = "nguoi_duoc_danh_gia")
	private String nguocDuocDanhGia;
	@Column(name = "ky_danh_gia")
	private String kyDanhGia;
	@Column(name = "ky_luat")
	String kyLuat;

	public String getKyDanhGia() {
		return kyDanhGia;
	}
	public void setKyDanhGia(String kyDanhGia) {
		this.kyDanhGia = kyDanhGia;
	}
	@Column(name = "tinh_than")
	String tinhThan;
	@Column(name = "kl_cong_viec")
	String klCongViec;
	@Column(name = "kq_cong_viec")
	String kqCongViec;
	@Column(name = "ky_nang")
	String kyNang;
	@Column(name = "dinh_huong")
	String dinhHuong;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(String phongBan) {
		this.phongBan = phongBan;
	}

	public String getNguoiDanhGia() {
		return nguoiDanhGia;
	}

	public void setNguoiDanhGia(String nguoiDanhGia) {
		this.nguoiDanhGia = nguoiDanhGia;
	}

	public String getNguocDuocDanhGia() {
		return nguocDuocDanhGia;
	}

	public void setNguocDuocDanhGia(String nguocDuocDanhGia) {
		this.nguocDuocDanhGia = nguocDuocDanhGia;
	}

	public String getKyLuat() {
		return kyLuat;
	}

	public void setKyLuat(String kyLuat) {
		this.kyLuat = kyLuat;
	}

	public String getTinhThan() {
		return tinhThan;
	}

	public void setTinhThan(String tinhThan) {
		this.tinhThan = tinhThan;
	}

	public String getKlCongViec() {
		return klCongViec;
	}

	public void setKlCongViec(String klCongViec) {
		this.klCongViec = klCongViec;
	}

	public String getKqCongViec() {
		return kqCongViec;
	}

	public void setKqCongViec(String kqCongViec) {
		this.kqCongViec = kqCongViec;
	}

	public String getKyNang() {
		return kyNang;
	}

	public void setKyNang(String kyNang) {
		this.kyNang = kyNang;
	}

	public String getDinhHuong() {
		return dinhHuong;
	}

	public void setDinhHuong(String dinhHuong) {
		this.dinhHuong = dinhHuong;
	}
}
