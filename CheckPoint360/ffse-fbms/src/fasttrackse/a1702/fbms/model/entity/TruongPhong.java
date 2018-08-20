package fasttrackse.a1702.fbms.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "truong_phong")
public class TruongPhong {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	/*
	 * @Column(name = "phong_ban") String phongBan;
	 * 
	 * @Column(name = "ho_ten") String nguoiDanhGia;
	 * 
	 * @Column(name = "ky_danh_gia") String kyDanhGia;
	 * 
	 * @Column(name = "nguoi_duoc_danh_gia") String nguoiDuocDanhGia;
	 */
	@Column(name = "ky_luat")
	private String kyLuat;
	@Column(name = "tinh_than")
	private String tinhThan;
	@Column(name = "kl_cong_viec")
	private String klCongViec;
	@Column(name = "kq_cong_viec")
	private String kqCongViec;
	@Column(name = "tong_the")
	private String tongThe;
	@Column(name = "ky_nang")
	private String kyNang;
	@Column(name = "nhan_xet_chung")
	private String nhanXetChung;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getTongThe() {
		return tongThe;
	}

	public void setTongThe(String tongThe) {
		this.tongThe = tongThe;
	}

	public String getKyNang() {
		return kyNang;
	}

	public void setKyNang(String kyNang) {
		this.kyNang = kyNang;
	}

	public String getNhanXetChung() {
		return nhanXetChung;
	}

	public void setNhanXetChung(String nhanXetChung) {
		this.nhanXetChung = nhanXetChung;
	}

}
